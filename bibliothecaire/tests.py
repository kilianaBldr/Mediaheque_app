from django.test import TestCase
from django.urls import reverse
from .models import Membre, Media, Emprunt
from django.utils import timezone


class MembreTests(TestCase):

    def setUp(self):
        # Crée un membre
        self.membre = Membre.objects.create(
            nom="Dupont",
            prenom="Jean",
            email=f"jean.dupont{timezone.now().timestamp()}@example.com",
            telephone="0746464646",
            date_inscription="2024-11-08"
        )


    def test_mise_a_jour_membre(self):
        # Test de la mise à jour d'un membre existant
        response = self.client.post(reverse('mise_a_jour_membre', args=[self.membre.id]), {
            'nom': 'Durand',
            'prenom': 'Jean',
            'email': 'jean.durand@exampleee.com',
            'telephone': '0746464646',
        })
        self.assertEqual(response.status_code, 302)
        self.membre.refresh_from_db()
        self.assertEqual(self.membre.nom, 'Durand')

    def test_liste_membres(self):
        # Test pour s'assurer que la liste des membres s'affiche correctement
        response = self.client.get(reverse('liste_membres'))
        self.assertEqual(response.status_code, 200)
        self.assertContains(response, "Jean")


class MediaTests(TestCase):

    def setUp(self):
        # Crée un média pour les tests
        self.media = Media.objects.create(titre="Test Livre", type_media="Livre", disponible=True)

    def test_affichage_liste_medias(self):
        # Test pour s'assurer que la liste des médias s'affiche correctement
        response = self.client.get(reverse('liste_medias'))
        self.assertEqual(response.status_code, 200)
        self.assertTemplateUsed(response, 'bibliothecaire/liste_medias.html')
        self.assertContains(response, "Test Livre")

    def test_creation_media(self):
        # Test de la création d'un média
        response = self.client.post(reverse('creer_media'), {
            'titre': 'Nouveau Livre',
            'type_media': 'Livre',
            'disponible': True,
        })
        self.assertEqual(response.status_code, 302) # Redirection après succès
        self.assertEqual(Media.objects.count(), 2) # Vérifie si un nouveau média a été ajouté


class EmpruntTests(TestCase):

    def setUp(self):
        self.membre = Membre.objects.create(
            nom="Dupont",
            prenom="Jean",
            email="jean.dupont@example.com"
        )
        self.media = Media.objects.create(
            titre="Test Livre",
            type_media="Livre",
            disponible=True
        )
        self.emprunt = Emprunt.objects.create(
            media=self.media,
            membre=self.membre
        )

    def test_creation_emprunt(self):
        response = self.client.post(reverse('creer_emprunt', args=[self.media.id]), {
            'membre': self.membre.id
        })
        self.assertEqual(response.status_code, 302)
        self.assertFalse(Media.objects.get(id=self.media.id).disponible)

    def test_retourner_emprunt(self):
        response = self.client.post(reverse('retourner_emprunt', args=[self.emprunt.id]))
        self.assertEqual(response.status_code, 302)
        self.emprunt.refresh_from_db()
        self.assertIsNotNone(self.emprunt.date_retour)
        self.assertTrue(Media.objects.get(id=self.media.id).disponible)

from django.test import TestCase
from django.urls import reverse
from .models  import Game,Add_on, Multi_add_on, Tag, Designer, Artist, Publisher, PlayingMode
# Create your tests here.
class IndexTestCase(TestCase):
    def test_index_page(self):
        response = self.client.get(reverse('index'))
        self.assertEqual(response.status_code,200)


class LuckyTestCase(TestCase):
    def test_lucky_page(self):
        test = Game.objects.create(name='the_test_game')
        response = self.client.get(reverse('ludorecherche:lucky'))
        self.assertEqual(response.status_code,200)


class DetailPageTestCase(TestCase):
    def setUp(self):
        test = Game.objects.create(name='the_test_game')
        self.game=Game.objects.get(name='the_test_game').pk

    def test_detail_page_returns_200(self):
        game_id = self.game
        response = self.client.get(reverse('ludorecherche:detail',args=(game_id,)))
        self.assertEqual(response.status_code,200)

    def test_detail_page_returns_404(self):
        game_id= self.game+999
        response = self.client.get(reverse('ludorecherche:detail',args=(game_id,)))
        self.assertEqual(response.status_code,404)


class Add_onDetailPageTestCase(TestCase):
    def setUp(self):
        test = Add_on.objects.create(name='the_test_add_on')
        self.add_on = Add_on.objects.get(name='the_test_add_on')
        test_game = Game.objects.create(name='the_test_game')
        self.add_on.game=test_game
        self.game_id = Game.objects.get(name='the_test_game').pk

    def test_detail_page_returns_404(self):
        add_on_id = self.add_on.pk + 999
        response = self.client.get(reverse('ludorecherche:add_on_detail', args=(add_on_id,)))
        self.assertEqual(response.status_code, 404)

    def test_detail_page_returns_200(self):
        add_on_id = self.add_on.pk
        response = self.client.get(reverse('ludorecherche:add_on_detail', args=(add_on_id,)))
        self.assertEqual(response.status_code, 200)

class List_allTestCase(TestCase):
    def test_list_all_page(self):
        response = self.client.get(reverse('ludorecherche:list_all'))
        self.assertEqual(response.status_code,200)


class Search_pageTestCase(TestCase):
    def test_search_page(self):
        response = self.client.get(reverse('ludorecherche:search_page'))
        self.assertEqual(response.status_code,200)


class SearchTestCase(TestCase):
    def test_search(self):
        response = self.client.get(reverse('ludorecherche:search'))
        self.assertEqual(response.status_code,200)

class Advanced_searchTestCase(TestCase):
    def test_Advanced_search(self):
        response = self.client.get(reverse('ludorecherche:advanced_search'))
        self.assertEqual(response.status_code,200)

class Error404PageTestCase(TestCase):
    def test_error404_page(self):
        response = self.client.get(reverse('ludorecherche:error404'))
        self.assertEqual(response.status_code,200)


class Error500PageTestCase(TestCase):
    def test_error500_page(self):
        response = self.client.get(reverse('ludorecherche:error500'))
        self.assertEqual(response.status_code,200)


class Multi_add_onDetailPageTestCase(TestCase):
    def setUp(self):
        test = Multi_add_on.objects.create(name='the_test_add_on')
        self.multi_add_on = Multi_add_on.objects.get(name='the_test_add_on')


    def test_detail_page_returns_404(self):
        multi_add_on_id = self.multi_add_on.pk + 999
        response = self.client.get(reverse('ludorecherche:multi_add_on_detail', args=(multi_add_on_id,)))
        self.assertEqual(response.status_code, 404)

    def test_detail_page_returns_200(self):
        multi_add_on_id = self.multi_add_on.pk
        response = self.client.get(reverse('ludorecherche:multi_add_on_detail', args=(multi_add_on_id,)))
        self.assertEqual(response.status_code, 200)


class Designer_listPageTestCase(TestCase):
    def setUp(self):
        test = Designer.objects.create(name='test_designer')
        self.designer = Designer.objects.get(name='test_designer')
    def test_detail_page_returns_200(self):
        response = self.client.get(reverse('ludorecherche:designer_game_list', args=(self.designer.pk,)))
        self.assertEqual(response.status_code, 200)

    def test_detail_page_returns_404(self):
        response = self.client.get(reverse('ludorecherche:designer_game_list', args=(self.designer.pk+1,)))
        self.assertEqual(response.status_code, 404)


class Artist_listPageTestCase(TestCase):
    def setUp(self):
        test = Artist.objects.create(name='test_artist')
        self.artist = Artist.objects.get(name='test_artist')
    def test_detail_page_returns_200(self):
        response = self.client.get(reverse('ludorecherche:artist_game_list', args=(self.artist.pk,)))
        self.assertEqual(response.status_code, 200)
    def test_detail_page_returns_404(self):
        response = self.client.get(reverse('ludorecherche:artist_game_list', args=(self.artist.pk+1,)))
        self.assertEqual(response.status_code, 404)

class Publisher_listPageTestCase(TestCase):
    def setUp(self):
        test = Publisher.objects.create(name='test_publisher')
        self.publisher = Publisher.objects.get(name='test_publisher')
    def test_detail_page_returns_200(self):
        response = self.client.get(reverse('ludorecherche:publisher_game_list', args=(self.publisher.pk,)))
        self.assertEqual(response.status_code, 200)
    def test_detail_page_returns_404(self):
        response = self.client.get(reverse('ludorecherche:artist_game_list', args=(self.publisher.pk+1,)))
        self.assertEqual(response.status_code, 404)

class Tag_listPageTestCase(TestCase):
    def setUp(self):
        test = Tag.objects.create(name='test_tag')
        self.tag = Tag.objects.get(name='test_tag')
    def test_detail_page_returns_200(self):
        response = self.client.get(reverse('ludorecherche:tag_game_list', args=(self.tag.pk,)))
        self.assertEqual(response.status_code, 200)
    def test_detail_page_returns_404(self):
        response = self.client.get(reverse('ludorecherche:tag_game_list', args=(self.tag.pk+1,)))
        self.assertEqual(response.status_code, 404)

class Game_type_listPageTestCase(TestCase):
    def setUp(self):
        test = PlayingMode.objects.create(name='test_playing_mode')
        self.playingmode = PlayingMode.objects.get(name='test_playing_mode')
    def test_detail_page_returns_200(self):
        response = self.client.get(reverse('ludorecherche:game_type_game_list', args=(self.playingmode.pk,)))
        self.assertEqual(response.status_code, 200)
    def test_detail_page_returns_404(self):
        response = self.client.get(reverse('ludorecherche:game_type_game_list', args=(self.playingmode.pk+1,)))
        self.assertEqual(response.status_code, 404)
from django import forms


from.models import Language, PlayingMode, Difficulty, Tag


LANGUAGES_CHOICES = [(language.name, language.name) for language in Language.objects.all()]
PLAYING_MODE_CHOICES = [(playing_mode.name, playing_mode.name) for playing_mode in PlayingMode.objects.all()]
DIFFICULTY_CHOICES = [(difficulty.name, difficulty.name) for difficulty in Difficulty.objects.all()]
TAG_CHOICES = [(tag.name, tag.name) for tag in Tag.objects.all()]


class SearchAdvForm(forms.Form):
    name = forms.CharField(widget=forms.TextInput(attrs={'class': 'search_text'}), required=False)
    designer = forms.CharField(widget=forms.TextInput(attrs={'class': 'search_text'}), required=False)
    artist = forms.CharField(widget=forms.TextInput(attrs={'class': 'search_text'}), required=False)
    publisher = forms.CharField(widget=forms.TextInput(attrs={'class': 'search_text'}), required=False)
    tag = forms.MultipleChoiceField(widget=forms.CheckboxSelectMultiple(attrs={'class': 'select'}),
                                    choices=TAG_CHOICES, required=False)
    difficulty = forms.MultipleChoiceField(widget=forms.CheckboxSelectMultiple(attrs={'class': 'select'}),
                                           choices=DIFFICULTY_CHOICES)
    playing_time = forms.IntegerField(widget=forms.NumberInput(attrs={'class': 'search_text'}), required=False)
    player_number = forms.IntegerField(widget=forms.NumberInput(attrs={'class': 'search_text'}), required=False)
    age = forms.IntegerField(widget=forms.NumberInput(attrs={'class': 'search_text'}), required=False)
    language = forms.MultipleChoiceField(widget=forms.CheckboxSelectMultiple(attrs={'class': 'select'}),
                                         choices=LANGUAGES_CHOICES)
    playing_mode_choice = forms.MultipleChoiceField(widget=forms.CheckboxSelectMultiple(attrs={'class': 'select'}),
                                                    choices=PLAYING_MODE_CHOICES)

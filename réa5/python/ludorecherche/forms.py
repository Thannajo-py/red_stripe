from django import forms


from ludogestion.forms import PLAYING_MODE_CHOICES, LANGUAGES_CHOICES, DIFFICULTY_CHOICES, TAG_CHOICES, \
    MECHANISM_CHOICES, TOPIC_CHOICES


class SearchAdvForm(forms.Form):  # form used in advanced search
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
    topic = forms.MultipleChoiceField(widget=forms.CheckboxSelectMultiple(attrs={'class': 'select'}),
                                                    choices=TOPIC_CHOICES)
    mechanism = forms.MultipleChoiceField(widget=forms.CheckboxSelectMultiple(attrs={'class': 'select'}),
                                                    choices=MECHANISM_CHOICES)

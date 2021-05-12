from django.forms import ModelForm, TextInput, PasswordInput
from .models import User

class LogInForm(ModelForm):
    class Meta:
        model = User
        fields = ['name', 'password']
        widgets = {
            'name': TextInput(attrs={'class': 'form-control'}),
            'password': PasswordInput(attrs={'class': 'form-control'})
        }
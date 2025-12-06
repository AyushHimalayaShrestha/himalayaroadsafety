from django import forms
from django.contrib.auth.models import User

class RegisterForm(forms.ModelForm):
    password = forms.CharField(widget=forms.PasswordInput(attrs={
        "class": "w-full px-4 py-2 bg-slate-700 border border-slate-600 rounded-lg"
    }))
    confirm_password = forms.CharField(widget=forms.PasswordInput(attrs={
        "class": "w-full px-4 py-2 bg-slate-700 border border-slate-600 rounded-lg"
    }))

    class Meta:
        model = User
        fields = ["username", "email"]

        widgets = {
            "username": forms.TextInput(attrs={
                "class": "w-full px-4 py-2 bg-slate-700 border border-slate-600 rounded-lg"
            }),
            "email": forms.EmailInput(attrs={
                "class": "w-full px-4 py-2 bg-slate-700 border border-slate-600 rounded-lg"
            }),
        }

    def clean(self):
        cleaned = super().clean()
        password = cleaned.get("password")
        confirm = cleaned.get("confirm_password")

        if password != confirm:
            raise forms.ValidationError("Passwords do not match")

        return cleaned

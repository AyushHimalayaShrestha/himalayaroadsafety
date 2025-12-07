from django.shortcuts import render,redirect
from django.contrib.auth import authenticate, login, logout
from django.contrib import messages
from .forms import RegisterForm
# Create your views here.

# Login
def login_view(request):
    if request.method == "POST":
        username = request.POST.get("username")
        password = request.POST.get("password")

        user = authenticate(request, username=username, password=password)

        if user:
            login(request, user)
            return redirect("products:home")
        else:
            messages.error(request, "Invalid username or password")

    return render(request, "accounts/login.html")


# Logout
def logout_view(request):
    logout(request)
    return redirect("products:home")

# Register
def register_view(request):
    form = RegisterForm()

    if request.method == "POST":
        form = RegisterForm(request.POST)

        if form.is_valid():
            user = form.save(commit=False)
            user.set_password(form.cleaned_data["password"])
            user.save()

            messages.success(request, "Account created successfully! Login now.")
            return redirect("accounts:login")
        else:
            messages.error(request, "Please correct the error below.")

    return render(request, "accounts/register.html", {"form": form})
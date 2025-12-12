from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.models import User
from django.contrib import messages
from django.contrib.auth.decorators import login_required

def healthcheck(request):
    return HttpResponse("OK")

def index(request):
    return render(request, "index.html")  # główna strona

def login_view(request):
    if request.method == "POST":
        username = request.POST.get("username")
        password = request.POST.get("password")
        user = authenticate(request, username=username, password=password)
        if user is not None:
            login(request, user)
            return redirect("dashboard")  # <- przekierowanie do dashboard
        else:
            messages.error(request, "Nieprawidłowy login lub hasło")
    return render(request, "login.html")

def register_view(request):
    if request.method == "POST":
        username = request.POST.get("username")
        password = request.POST.get("password")
        password2 = request.POST.get("password2")
        if password != password2:
            messages.error(request, "Hasła nie są zgodne")
        elif User.objects.filter(username=username).exists():
            messages.error(request, "Użytkownik już istnieje")
        else:
            User.objects.create_user(username=username, password=password)
            messages.success(request, "Konto zostało utworzone")
            return redirect("login")
    return render(request, "register.html")

@login_required(login_url='login')
def dashboard_view(request):
    return render(request, "dashboard.html", {"user": request.user})

def logout_view(request):
    logout(request)
    return redirect('login')


@login_required(login_url='login')  # wymaga zalogowania
def dashboard_view(request):
    return render(request, "dashboard.html", {"user": request.user})



def logout_view(request):
    logout(request)
    return redirect('index')

@login_required
def dashboard_view(request):
    return render(request, "dashboard.html") 


@login_required
def create_environment_view(request):
    return render(request, "create_environment.html")

@login_required
def environment_preview_view(request):
    # na razie może być pusty
    return render(request, "environment_preview.html")
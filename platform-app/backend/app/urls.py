from django.urls import path
from .views import healthcheck, index, login_view, register_view
from . import views

urlpatterns = [
    path("healthcheck/", healthcheck, name="healthcheck"),
    path("", index, name="index"),       # domyślna strona
    path('login/', views.login_view, name='login'),
    path('register/', views.register_view, name='register'),
    path('dashboard/', views.dashboard_view, name='dashboard'), 
    path('logout/', views.logout_view, name='logout'),
    path('create-environment/', views.create_environment_view, name='create_environment'),
    path('environment-preview/', views.environment_preview_view, name='environment_preview'),
]


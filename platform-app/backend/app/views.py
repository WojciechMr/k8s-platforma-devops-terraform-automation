from django.http import HttpResponse

def home(request):
    return HttpResponse("Django platform backend działający w EKS.")

def healthcheck(request):
    return HttpResponse("OK")

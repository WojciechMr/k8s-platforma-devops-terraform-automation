# project/wsgi.py

import os
from django.core.wsgi import get_wsgi_application

# Wskazanie settings (np. production)
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "project.settings.production")

application = get_wsgi_application()

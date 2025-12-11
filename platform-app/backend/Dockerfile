# 1. Bazowy obraz Pythona
FROM python:3.11-slim

# 2. Ustawienie katalogu roboczego
WORKDIR /app

# 3. Kopiowanie plików
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# 4. Ustawienie env variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
ENV DJANGO_SETTINGS_MODULE=project.settings.production

# 5. Tworzymy folder dla statics i logów
RUN mkdir -p /app/staticfiles /app/media

# 6. Collectstatic
RUN python manage.py collectstatic --noinput

# 7. Port
EXPOSE 8000

# 8. Komenda startowa (Gunicorn)
CMD ["gunicorn", "project.wsgi:application", "--bind", "0.0.0.0:8000", "--workers", "3"]

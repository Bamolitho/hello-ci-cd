# Étape 1 : Image de base
FROM python:3.10-slim

# Étape 2 : Dossier de travail
WORKDIR /app

# Étape 3 : Copier les fichiers
COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

# Étape 4 : Copier le reste du code
COPY . .

# Étape 5 : Lancer l'application
ENTRYPOINT ["python"]
CMD ["app/app.py"]

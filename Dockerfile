# Utilise une image officielle Python
FROM python:3.11

# Définit le répertoire de travail dans le conteneur
WORKDIR /app

# Copie les fichiers de ton projet dans le conteneur
COPY . .

# Installe les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Expose le port sur lequel Flask tourne
EXPOSE 5000

# Démarre l'application
CMD ["python", "app.py"]

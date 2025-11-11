FROM node:20-alpine

WORKDIR /app

# Installer dépendances système nécessaires à Next.js
RUN apk add --no-cache python3 make g++

# Installer npm à jour
RUN npm install -g npm@latest

# Copier les fichiers de dépendances
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier le reste du code
COPY . .

# Exposer le port de dev
EXPOSE 3000

# Lancer Next.js en mode développement
CMD ["npm", "run", "dev", "--", "--hostname", "0.0.0.0"]

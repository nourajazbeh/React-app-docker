# Basisimage
FROM node:alpine

# Arbeitsverzeichnis im Container festlegen
WORKDIR /react-docker-tutorial/

# Abhängigkeiten installieren
COPY package.json .
RUN npm install

# Quellcode kopieren
COPY . . 

# Port freigeben
EXPOSE 3000

# Anwendung starten
CMD ["npm", "start"]
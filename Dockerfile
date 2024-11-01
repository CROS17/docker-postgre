# Usa la imagen oficial de PostgreSQL 15.3
FROM postgres:15.3

# Configura las variables de entorno necesarias para la base de datos (opcional aquí si las configuras en docker-compose.yml)
ENV POSTGRES_USER=root
ENV POSTGRES_PASSWORD=12345

# Expone el puerto por defecto de PostgreSQL
EXPOSE 5432

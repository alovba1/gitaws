FROM openjdk:17-jdk-slim

# Definir variable de entorno
ENV APP_JAR=build/libs/dem-1.0-SNAPSHOT.jar

# Copiar el archivo JAR al contenedor
COPY ${APP_JAR} app.jar

# Crear un usuario no root
RUN addgroup --system appgroup && adduser --system --ingroup appgroup appuser

# Exponer el puerto 8080 para la aplicación
EXPOSE 8080

# Cambiar al usuario no root
USER appuser

# Comando de inicio de la aplicación
ENTRYPOINT ["java", "-jar", "/app.jar"]

# Etiquetas para metadata
LABEL maintainer="tu-email@ejemplo.com" \
      version="1.0" \
      description="Aplicación Java desplegable mediante Docker"

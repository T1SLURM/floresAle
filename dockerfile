# Usar una imagen base de Nginx
FROM nginx:alpine

# Copiar el archivo HTML al directorio de contenido de Nginx
COPY teQuieroAle.html /usr/share/nginx/html/

# Exponer el puerto 80
EXPOSE 80

# El comando por defecto ya está configurado en la imagen base de Nginx
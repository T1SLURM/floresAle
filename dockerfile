FROM nginx:alpine

# Crear directorio y limpiar contenido por defecto
WORKDIR /usr/share/nginx/html
RUN rm -rf ./*

# Copiar archivo HTML específicamente como index.html
COPY teQuieroAle.html ./teQuieroAle.html

# Verificar que el archivo existe
RUN ls -la /usr/share/nginx/html/

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
# Usar imagen base de Nginx Alpine
FROM nginx:alpine

# Crear directorio de trabajo
WORKDIR /usr/share/nginx/html

# Remover archivos por defecto de nginx
RUN rm -rf ./*

# Copiar todos los archivos HTML al directorio de nginx
COPY *.html ./

# Asegurar que index.html existe (si tu archivo tiene otro nombre, renombrarlo)
RUN if [ ! -f "index.html" ] && [ -f "*.html" ]; then \
        mv *.html index.html; \
    fi

# Configurar permisos
RUN chmod -R 755 /usr/share/nginx/html

# Verificar archivos copiados
RUN ls -la /usr/share/nginx/html/

# Exponer puerto 80
EXPOSE 80

# Iniciar nginx
CMD ["nginx", "-g", "daemon off;"]
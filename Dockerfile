# Imagem enxuta e atualizada: menos pacotes = menos CVEs
FROM nginx:alpine

# Atualiza pacotes do sistema para corrigir CVEs conhecidos
RUN apk upgrade --no-cache

# Copia apenas os arquivos do site
COPY index.html style.css app.js /usr/share/nginx/html/

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=3s CMD wget -qO- http://localhost/ || exit 1

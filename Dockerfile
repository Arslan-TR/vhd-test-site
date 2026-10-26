# VHD Manager kabul testi için küçük statik site (deploy / geri alma denemesi).
FROM nginx:1.27-alpine
COPY site/ /usr/share/nginx/html/
EXPOSE 80
HEALTHCHECK --interval=30s --timeout=3s CMD wget -qO- http://127.0.0.1/surum.txt >/dev/null || exit 1

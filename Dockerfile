FROM nginx:alpine

WORKDIR /usr/share/nginx/html

RUN mkdir -p img
RUN mkdir -p css
RUN mkdir -p js
RUN mkdir -p vendor/bootstrap/css/
RUN mkdir -p vendor/bootstrap/js/
RUN mkdir -p vendor/fontawesome-free/css/
RUN mkdir -p vendor/jquery/
RUN mkdir -p vendor/jquery-easing/

COPY index.html .
COPY css/resume.min.css ./css/
COPY img/git-repository-logo.png ./img/
COPY img/profile.jpg ./img/
COPY img/resume.jpg ./img/
COPY js/resume.min.js ./js/
COPY vendor/bootstrap/css/bootstrap.min.css ./vendor/bootstrap/css/
COPY vendor/bootstrap/js/bootstrap.bundle.min.js ./vendor/bootstrap/js/
COPY vendor/fontawesome-free/css/all.min.css ./vendor/fontawesome-free/css/
COPY vendor/jquery/jquery.min.js ./vendor/jquery/
COPY vendor/jquery-easing/jquery.easing.min.js ./vendor/jquery-easing/
COPY vendor/fontawesome-free/webfonts/fa-brands-400.woff ./vendor/fontawesome-free/webfonts/
COPY vendor/fontawesome-free/webfonts/fa-brands-400.woff2 ./vendor/fontawesome-free/webfonts/
COPY vendor/fontawesome-free/webfonts/fa-solid-900.woff ./vendor/fontawesome-free/webfonts/
COPY vendor/fontawesome-free/webfonts/fa-solid-900.woff2 ./vendor/fontawesome-free/webfonts/
COPY vendor/fontawesome-free/webfonts/fa-solid-900.ttf ./vendor/fontawesome-free/webfonts/
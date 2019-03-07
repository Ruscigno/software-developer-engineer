FROM nginx:alpine

WORKDIR /usr/share/nginx/html

RUN mkdir -p img
RUN mkdir -p css
RUN mkdir -p js
RUN mkdir -p resource/bootstrap/css/
RUN mkdir -p resource/bootstrap/js/
RUN mkdir -p resource/fontawesome-free/css/
RUN mkdir -p resource/jquery/
RUN mkdir -p resource/jquery-easing/

COPY index.html .
COPY favicon.ico .
COPY css/resume.min.css ./css/
COPY img/git-repository-logo.png ./img/
COPY img/profile.jpg ./img/
COPY img/resume-preview.jpg ./img/
COPY js/resume.min.js ./js/
COPY resource/bootstrap/css/bootstrap.min.css ./resource/bootstrap/css/
COPY resource/bootstrap/js/bootstrap.bundle.min.js ./resource/bootstrap/js/
COPY resource/fontawesome-free/css/all.min.css ./resource/fontawesome-free/css/
COPY resource/jquery/jquery.min.js ./resource/jquery/
COPY resource/jquery-easing/jquery.easing.min.js ./resource/jquery-easing/
COPY resource/fontawesome-free/webfonts/fa-brands-400.woff ./resource/fontawesome-free/webfonts/
COPY resource/fontawesome-free/webfonts/fa-brands-400.woff2 ./resource/fontawesome-free/webfonts/
COPY resource/fontawesome-free/webfonts/fa-solid-900.woff ./resource/fontawesome-free/webfonts/
COPY resource/fontawesome-free/webfonts/fa-solid-900.woff2 ./resource/fontawesome-free/webfonts/
COPY resource/fontawesome-free/webfonts/fa-solid-900.ttf ./resource/fontawesome-free/webfonts/
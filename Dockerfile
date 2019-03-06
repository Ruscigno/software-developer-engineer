FROM node:11-alpine as build

COPY . /usr/share/nginx/html

WORKDIR /usr/share/nginx/html
RUN npm remove -g bower
RUN npm remove -g gulp
RUN npm install gulp-util --save-dev
RUN npm install -g bower
RUN npm install -g gulp
RUN gulp css
RUN npm install
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

COPY --from=build /usr/share/nginx/html/index.html .
COPY --from=build /usr/share/nginx/html/img .

COPY --from=build css/resume.min.css ./css/
COPY --from=build img/git-repository-logo.png ./img/
COPY --from=build img/profile.jpg ./img/
COPY --from=build img/resume.jpg ./img/
COPY --from=build js/resume.min.js ./js/
COPY --from=build vendor/bootstrap/css/bootstrap.min.css ./vendor/bootstrap/css/
COPY --from=build vendor/bootstrap/js/bootstrap.bundle.min.js ./vendor/bootstrap/js/
COPY --from=build vendor/fontawesome-free/css/all.min.css ./vendor/fontawesome-free/
COPY --from=build vendor/jquery/jquery.min.js ./vendor/jquery/
COPY --from=build vendor/jquery-easing/jquery.easing.min.js ./vendor/jquery-easing/
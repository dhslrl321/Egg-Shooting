FROM nginx

RUN mkdir /app

WORKDIR /app

RUN mkdir ./build

ADD ./src/build/html5 ./build

RUN rm /etc/nginx/conf.d/default.conf

COPY ./nginx.conf /etc/nginx/conf.default

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
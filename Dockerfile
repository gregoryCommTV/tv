FROM nikolaik/python-nodejs:python3.7-nodejs10

RUN npm install -g local-cors-proxy

RUN mkdir -p /usr/src/gc
WORKDIR /usr/src/gc
COPY . /usr/src/gc

EXPOSE 8000
ENTRYPOINT ["./start.sh"]

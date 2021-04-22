FROM node:14.16-slim
WORKDIR /app
VOLUME /app/certs
VOLUME /app/grpc
VOLUME /app/mocks
RUN npm i -g camouflage-server@1.1.0
COPY ./config.yml /app/
CMD ["camouflage", "--config", "config.yml"]
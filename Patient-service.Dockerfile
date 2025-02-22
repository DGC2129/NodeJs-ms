FROM node:18.20.1
WORKDIR /src
COPY . /src
RUN npm install
EXPOSE 5000
CMD ["node", "Patient-service.js"]

FROM  node:latest
WORKDIR /app
COPY package.json /app/
COPY db.json /app/
RUN npm install
EXPOSE 3000
CMD [ "npx","json-server","db.json" ]
# Use the official Node.js 14 image
FROM node:16

# Set the working directory in the container
WORKDIR /usr/src/app

RUN npm install

COPY . .

ENV APP_ENV=production
ENV APP_PORT=8080
ENV MODEL_URL="[MODEL URL]"
ENV PROJECT_ID="[PROJECT ID]"

CMD [ "npm", "start" ]

EXPOSE 3000

# Use the official Node.js 14 image
FROM node:16

# Set the working directory in the container
WORKDIR /usr/src/app

RUN npm install

COPY . .

ENV APP_ENV=production
ENV APP_PORT=3000
ENV MODEL_URL="MODEL_URL= https://storage.googleapis.com/modelml_submission/model.json"
ENV PROJECT_ID="submissionmlgc-rizqicahyaa"

CMD [ "npm", "start" ]

EXPOSE 3000

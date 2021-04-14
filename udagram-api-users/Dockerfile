# Use NodeJS base image
FROM node:13

# To run it locally 
# docker run -e POSTGRES_USERNAME='postgres' \
# -e POSTGRES_PASSWORD='12345678' \
# -e POSTGRES_HOST='bandar.crlmizyczxik.eu-west-2.rds.amazonaws.com' \
# -e POSTGRES_DB='postgres' \
# -e AWS_BUCKET='test-project-042502959973' \
# -e AWS_REGION='eu-west-2' \
# -e AWS_PROFILE='default' \
# -e JWT_SECRET='hello' \
# -e URL='http://localhost:8100' \
# {image-id}

# Create app directory in Docker
WORKDIR /usr/src/app
# Install app dependencies by copying
# package.json and package-lock.json
COPY package*.json ./
#COPY udagram-apifeed/package*.json /usr/src/app/
#COPY src/. /usr/src/app # this is to bring server.ts one level up
# Install dependencies in Docker
#RUN npm install
RUN npm ci 
#RUN npm run build
# Copy app from local environment into the Docker image
COPY . .
# Set the API’s port number
EXPOSE 8080
# Define Docker’s behavior when the image is run
#CMD ["node", "server.js"]
CMD [ "npm", "run", "prod" ]

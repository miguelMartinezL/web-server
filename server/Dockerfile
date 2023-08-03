FROM node:16


# create app directory
WORKDIR /usr/src/app

# install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install 
# If you are building your code for production 
# RUN npm ci --only=production

# bundle app source
COPY . .

EXPOSE 7777
CMD [ "npm", "run", "start" ]

# here u can build ur docker image
# dockerize node app
FROM node:12.16.1-alpine


# create app directory
WORKDIR /usr/src/app

# copy app dependencies
COPY package*.json ./

# install dependencies
RUN npm install

# BUNDLE app source
COPY . .

# expose port 3000
EXPOSE 3000

# run app
CMD ["node", "index.js"]




# here u can build ur docker image
# dockerize node app
# if u change the docker file u build it again
# alphine a reduced size node (without bash file)
FROM node:16


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



# rename image, use docker tag command
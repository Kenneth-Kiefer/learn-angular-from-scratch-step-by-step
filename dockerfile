# using Node v10
FROM node:10

# create app directory
WORKDIR /usr/src/lafs

# install app dependencies
# a wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./
RUN npm install -g @angular/cli@v6-lts
RUN npm install

# bundle app source
COPY . . 

# expose port 3000 to outside conatainer
EXPOSE 4200

# command used to start container
CMD ng serve --host 0.0.0.0
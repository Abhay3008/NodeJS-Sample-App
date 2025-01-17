#Choose a base image
FROM node

# Create a new folder for our application
RUN mkdir -p /usr/src/app

# Set the working dir when our container executes
WORKDIR /usr/src/app

# Copy our package.json file
# ADD package.json /usr/src/app

# Install app dependencies
COPY package.json .
# For npm@5 or later, copy package-lock.json as well
# COPY package.json package-lock.json ./

# Install our packages
RUN npm install

# Copy the rest of our application and Bundle app source
COPY . /usr/src/app

#Expose our application port
EXPOSE 3000

# Set start command
CMD [ "npm", "start" ]

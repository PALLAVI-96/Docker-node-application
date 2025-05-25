Create package.json

      npm init -y
      npm install express
      
Create index.js
Create Dockerfile

      # Use official Node.js image
      FROM node:18
      
      # Create app directory
      WORKDIR /usr/src/app
      
      # Copy package.json and install dependencies
      COPY package*.json ./
      RUN npm install
      
      # Copy app source code
      COPY . .
      
      # Expose the app port
      EXPOSE 3000
      
      # Run the app
      CMD [ "npm", "start" ]
Create .dockerignore
    node_modules
Build docker images:  docker build -t my-node-image .
Build Docker Container: docker run -itd --name node-conatiner -p 3001:3000 my-node-image
Access the app at http://localhost:3001

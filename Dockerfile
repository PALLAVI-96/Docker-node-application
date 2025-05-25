FROM node:18 # Use official Node.js image
WORKDIR /app
COPY package*.json ./
RUN npm install 
COPY . .
EXPOSE 3000
CMD ["npm","start"]

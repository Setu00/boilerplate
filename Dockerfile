FROM node:16-alpine

# Create app directory
WORKDIR /app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
RUN apk update && \
    apk upgrade && \
    apk add g++ gcc libgcc libstdc++ linux-headers make cmake python3
RUN npm install
COPY . .

# Command to run app
CMD npm run start
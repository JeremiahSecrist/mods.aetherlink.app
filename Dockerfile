FROM node:17-slim
# Using slim for now. use regular if issue arrises

USER node

WORKDIR /app

# default port doesnt matter just yet
EXPOSE 8888

COPY package*.json /app

# Install packages from package-lock.json
RUN npm ci

# Copy project files over
COPY * /app

CMD ["npm","start"]

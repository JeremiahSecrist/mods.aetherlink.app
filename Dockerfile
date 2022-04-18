FROM node:17-slim
# Using slim for now. use regular if issue arrises

WORKDIR /app

# default port doesnt matter just yet
EXPOSE 3000

COPY package.json /app
COPY package-lock.json /app

# Install packages from package-lock.json
RUN npm ci

# Copy project files over
COPY . /app

RUN npm run build

CMD ["npm","run","start"]

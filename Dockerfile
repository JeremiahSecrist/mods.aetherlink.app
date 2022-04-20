FROM node:17-slim
# Using slim for now. use regular if issue arrises

# default port doesnt matter just yet
EXPOSE 3000

WORKDIR /app

COPY package.json package-lock.json ./

# Install packages from package-lock.json
RUN make install

# Copy project files over
COPY . .

RUN make build

CMD ["npm","run","start"]

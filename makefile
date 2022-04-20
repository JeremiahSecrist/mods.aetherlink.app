default:
	@echo "no help included"

install:
	npm ci

install.latest:
	npm install

build: install
	npm run build

develop: install
	npm run dev

start: install
	npm run start
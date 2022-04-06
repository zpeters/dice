default: dev

dev: install
	yarn serve

build: install
	yarn build

lint: install
	yarn lint

install:
  yarn

deploy: install build lint
  cd dist
  git init
  git add -A
  git commit -m 'deploy'

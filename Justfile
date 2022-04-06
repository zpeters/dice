default: dev

dev: install
	yarn serve

build: install
	yarn build

lint: install
	yarn lint

install:
  yarn

outdated:
  yarn outdated

upgrade:
  yarn upgrade

deploy: install build lint
  cd dist
  git init
  git add -A
  git commit -m 'deploy'
  git push -f git@github.com:zpeters/dice.git master:gh-pages

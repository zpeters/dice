default: dev

dev: install
	yarn serve

build: install
	yarn build

install:
  yarn

outdated:
  vue outdated
  yarn outdated

deploy: install build
  cd dist
  git init
  git add -A
  git commit -m 'deploy'
  git push -f git@github.com:zpeters/dice.git master:gh-pages

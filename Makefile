build:
	npm ci
	npm run build
init: build
	pm2 start pm2.config.js
deploy: build
	pm2 restart lolol
	pm2 reset lolol

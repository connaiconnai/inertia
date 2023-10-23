build:
	docker compose build
up:
	docker compose up -d
buildup:
	@make build
	@make up
init:
	@make build
	@make up
	@make inertia
	@make dev

inertia:
	docker compose exec myapp composer require laravel/breeze --dev
	docker compose exec myapp php artisan breeze:install
	docker compose exec myapp php artisan breeze:install react
	docker compose exec myapp npm install

dev:
	docker compose exec myapp npm run dev 

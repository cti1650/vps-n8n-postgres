dev:
	docker compose -f docker/compose.base.yaml -f docker/compose.dev.yaml up

prod:
	docker compose -f docker/compose.base.yaml -f docker/compose.prod.yaml up

dev-down:
	docker compose -f docker/compose.base.yaml -f docker/compose.dev.yaml down

prod-down:
	docker compose -f docker/compose.base.yaml -f docker/compose.prod.yaml down

dev-build:
	docker compose -f docker/compose.base.yaml -f docker/compose.dev.yaml build

prod-build:
	docker compose -f docker/compose.base.yaml -f docker/compose.prod.yaml build
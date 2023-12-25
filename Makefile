build:
	docker build -f Dockerfile -t augmented-jupyter-notebook .

run_with_docker_compose:
	docker-compose up -d --build

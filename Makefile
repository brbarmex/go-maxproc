# Variáveis
APP_NAME = my-go-app
DOCKER_IMAGE = $(APP_NAME):latest
DOCKER_CONTAINER = $(APP_NAME)-container
LOAD_TEST_SCRIPT = load-test.js
K6 = k6

# Default target
.PHONY: run-all
run-all: docker-build docker-run load-test

# Instalar pacotes k6
.PHONY: install-k6
install-k6:
	@echo "Installing k6..."
	brew install k6 || sudo apt-get install k6 -y || sudo yum install k6 -y

# Rodar o teste de carga
.PHONY: load-test
load-test:
	@echo "Running load test..."
	$(K6) run $(LOAD_TEST_SCRIPT)
#	$(K6) run $(LOAD_TEST_SCRIPT) --out json=results.json --out csv=results.csv

# Build da imagem Docker
.PHONY: docker-build
docker-build:
	@echo "Building Docker image..."
	docker build -t $(DOCKER_IMAGE) .

# Executar o container Docker
.PHONY: docker-run
docker-run: docker-build
	@echo "Running Docker container..."
	docker container rm --force $(DOCKER_CONTAINER)
#	docker run -e GOMAXPROCS=1 --cpus=0.25 -d --name $(DOCKER_CONTAINER) -p 8080:8080 $(DOCKER_IMAGE)
	docker run --cpus=0.25 -d --name $(DOCKER_CONTAINER) -p 8080:8080 $(DOCKER_IMAGE)
	@sleep 10 # Aguarda o container iniciar

# Parar e remover o container Docker
.PHONY: docker-clean
docker-clean:
	@echo "Stopping and removing Docker container..."
	docker stop $(DOCKER_CONTAINER) || true
	docker rm $(DOCKER_CONTAINER) || true

# Comando para buildar a imagem Docker e executar o container, em seguida rodar o teste de carga
.PHONY: test
test: docker-clean docker-run load-test

# Limpar todos os recursos Docker
.PHONY: clean
clean: docker-clean
	@echo "Cleaning Docker images..."
	docker rmi $(DOCKER_IMAGE) || true

go-buid:
	@echo building go appliation
	go build -o main .

# Help
.PHONY: help
help:
	@echo "Usage:"
	@echo "  make install-k6     - Install k6"
	@echo "  make load-test      - Run the load test using k6"
	@echo "  make docker-build   - Build the Docker image"
	@echo "  make docker-run     - Run the Docker container"
	@echo "  make docker-clean   - Stop and remove the Docker container"
	@echo "  make test           - Build and run Docker container, then run the load test"
	@echo "  make clean          - Clean Docker resources"
	@echo "  make help           - Show this help message"

VERSION := 0.4.7.7

all: 
	docker --log-level=debug buildx build . \
		-f build.Dockerfile \
		--build-arg=TOR_VERSION=$(VERSION) \
		--platform linux/arm64 \
		--tag ghcr.io/milgradesec/tor:$(VERSION) \
		--tag ghcr.io/milgradesec/tor:latest \
		--push

VERSION:=0.4.6.7-r1

all: 
	docker --log-level=debug buildx build . \
		-f build.Dockerfile \
		--build-arg=TOR_VERSION=$(VERSION) \
		--platform linux/arm64 \
		--tag ghcr.io/milgradesec/tor:$(VERSION) \
		--tag ghcr.io/milgradesec/tor:latest \
		--push
build:
	docker build -t quake2-server .

run: build
	docker run --rm -it \
		-p 27910:27910/udp \
		-v $(CURDIR)/baseq2:/usr/share/games/quake2/baseq2 \
		quake2-server

up: build
	docker run -d --name quake2-server \
		-p 27910:27910/udp \
		-v $(CURDIR)/baseq2:/usr/share/games/quake2/baseq2 \
		quake2-server

down:
	-docker stop quake2-server
	-docker rm quake2-server

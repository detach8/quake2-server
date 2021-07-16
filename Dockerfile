FROM debian:buster

RUN echo "deb http://deb.debian.org/debian/ buster main contrib" >> /etc/apt/sources.list
RUN apt-get update && apt-get install -y quake2-server

WORKDIR /usr/share/games/quake2

USER quake2-server
EXPOSE 27910/udp

ENTRYPOINT ["/usr/games/quake2-server"]

CMD ["+exec", "server.cfg"]

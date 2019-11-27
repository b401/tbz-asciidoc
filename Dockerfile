FROM asciidoctor/docker-asciidoctor:latest

RUN apk update --no-cache && apk add --no-cache -t build-dependencies \
	git

RUN git clone https://github.com/b401/TBZ-Template.git -b docker_image /template

COPY sleep.sh /template/sleep.sh

ENTRYPOINT ["/template/sleep.sh","$1"]

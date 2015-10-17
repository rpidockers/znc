FROM resin/rpi-raspbian:jessie

# Deps
RUN apt-get update

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y gcc znc

RUN useradd znc

# Config
ADD files/ /

EXPOSE 6667

ENTRYPOINT ["/usr/local/bin/start-znc"]

CMD [""]

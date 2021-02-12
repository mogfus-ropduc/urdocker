FROM ubuntu:20.10
RUN useradd --create-home --shell /bin/bash urbit
WORKDIR /home/urbit
RUN apt-get update && apt-get install -y wget && apt-get clean
COPY ./src .
RUN ./setup.sh
USER urbit
ENTRYPOINT ["./entrypoint.sh"]
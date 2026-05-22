FROM ubuntu:22.04

RUN apt update && apt install -y \
    bash \
    procps \
    coreutils \
    grep \
    sed

WORKDIR /app

COPY . /app

RUN mkdir -p /app/logs

RUN chmod +x agent/*.sh
RUN chmod +x dummy_service.sh

CMD ["bash", "agent/run.sh"]

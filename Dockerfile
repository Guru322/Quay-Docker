FROM node:alpine

ENV TZ=Asia/Kolkata

RUN apk add --no-cache \
    tzdata \
    ffmpeg \
    git \
    imagemagick \
    python3 \
    graphicsmagick \
    sudo \
    npm \
    yarn \
    curl \
    bash && \
    cp /usr/share/zoneinfo/Asia/Kolkata /etc/localtime && \
    echo "Asia/Kolkata" > /etc/timezone

RUN npm install -g supervisor

RUN apk del curl && \
    rm -rf /var/cache/apk/*

CMD ["bash"]

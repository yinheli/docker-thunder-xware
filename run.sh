if [ ! -d data ]; then
    mkdir -p data
fi

docker images | grep docker-xware
if [ ! $? -eq 0 ]; then
    docker build -t docker-xware .
fi

docker run -d --privileged=true \
        --name=xware \
        -v $(pwd)/data:/app/TDDOWNLOAD \
        -v $(pwd)/thunder/bin:/app/bin \
    docker-xware

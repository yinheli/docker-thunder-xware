if [ ! -d data ]; then
    mkdir -p data
fi

docker run -d \
        --name=xware \
        -v $(pwd)/data:/app/TDDOWNLOAD \
        yinheli/docker-thunder-xware:latest

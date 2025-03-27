#!/bin/sh
set -e

# Start Docker daemon
dockerd-entrypoint.sh &
sleep 5

# Clone repo
git clone https://github.com/Internet2/comanage-registry /repo/comanage-registry

# Build image
cd /repo/comanage-registry

# If /build-debug.sh exists, copy it to container/build.sh
if [ -f /build-debug.sh ]; then
    echo "Copying build-debug.sh to container/build.sh"
    cp /build-debug.sh container/build.sh
fi

chmod +x ./container/build.sh
./container/build.sh --suffix 1 registry basic-auth

# Tag the built image and save it
BUILT_IMAGE=$(docker images -q | head -n 1)
IMAGE_NAME="comanage-registry:latest"
docker tag ${BUILT_IMAGE} ${IMAGE_NAME}
docker save -o /output/image.tar ${IMAGE_NAME}

echo "Build completed. Image saved to ./output/image.tar (${IMAGE_NAME})"
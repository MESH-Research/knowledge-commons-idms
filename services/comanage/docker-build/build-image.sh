#!/bin/bash
set -e

docker build -t comanage-builder -f Dockerfile.builder .

mkdir -p output

docker run --privileged -v $(pwd)/output:/output comanage-builder

#image is loaded with the tag comanage-registry:latest
docker load -i output/image.tar

rm -rf output

echo "Build process completed. Image is tagged as comanage-registry:latest."
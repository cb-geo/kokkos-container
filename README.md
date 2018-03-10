# Docker image for KOKKOS
> Krishna Kumar

[![Quay image](https://img.shields.io/badge/quay--image-cbgeo--kokkos-ff69b4.svg)](https://quay.io/repository/cbgeo/kokkos)
[![Docker hub](https://img.shields.io/badge/docker--hub-cbgeo--kokkos-ff69b4.svg)](https://hub.docker.com/r/cbgeo/kokkos)
[![CircleCI](https://circleci.com/gh/cb-geo/kokkos-container.svg?style=svg)](https://circleci.com/gh/cb-geo/kokkos-container)
[![](https://images.microbadger.com/badges/image/cbgeo/kokkos.svg)](http://microbadger.com/images/cbgeo/kokkos)

## Tools
* CMake
* CUDA
* GCC 7

# Using the docker image
* The docker image can be used directly from Quay.io or Docker Hub
* Pull the docker image `docker pull quay.io/cbgeo/kokkos` or `docker pull cbgeo/kokkos` 
* To launch the `cbgeo/ca-abm`  docker container, run `docker run -ti cbgeo/kokkos:latest /bin/bash` or `docker run -ti quay.io/cbgeo/kokkos:latest /bin/bash`

# To login as root
* Launching docker as root user: `docker exec -u 0 -ti <containerid> /bin/bash`

# Creating an image from the docker file
* To build an image from docker file run as root `docker build -t "cbgeo/kokkos" /path/to/Dockerfile`
* `docker history` will show you the effect of each command has on the overall size of the file.

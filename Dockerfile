FROM fedora:latest
MAINTAINER Krishna Kumar <kks32@cam.ac.uk>

# Update to latest packages, remove vim-minimal & Install Git, GCC, Clang, Autotools and VIM
RUN dnf update -y && \
    dnf remove -y vim-minimal python sqlite && \
    dnf install -y boost boost-devel clang cmake cppcheck dnf-plugins-core findutils gcc gcc-c++ \
                   git kernel-devel make tar valgrind vim wget && \
    dnf clean all

# Install CUDA
RUN wget https://developer.download.nvidia.com/compute/cuda/repos/fedora25/x86_64/cuda-repo-fedora25-9.1.85-1.x86_64.rpm && \
    dnf install -y ./cuda-repo-fedora25-9.1.85-1.x86_64.rpm && \
    dnf install -y cuda && \
    dnf clean all
    
# Create a user cbgeo
RUN useradd cbgeo
USER cbgeo

# Create a research directory and 
RUN mkdir -p /home/cbgeo/research && \
    cd /home/cbgeo/research
    
# Done
WORKDIR /home/cbgeo/research/

RUN /bin/bash "$@"

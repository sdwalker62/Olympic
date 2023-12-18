FROM nvcr.io/nvidia/k8s/container-toolkit:v1.15.0-rc.1-ubuntu20.04

LABEL authors="samue"

# Install Miniconda3
RUN mkdir -p ~/miniconda3 \
    && wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh \
    && bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3 \
    && rm -rf ~/miniconda3/miniconda.sh

ENTRYPOINT ["top", "-b"]
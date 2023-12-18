FROM nvcr.io/nvidia/k8s/container-toolkit:v1.15.0-rc.1-ubuntu20.04

LABEL project="Olympic"
LABEL authors="Athena Team + Collaborators"

# Install System Dependencies
RUN apt-get -y update \
    && apt-get install -y \
    wget \
    swig \
    build-essential

# Install Miniconda3
RUN mkdir -p ~/miniconda3 \
    && wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh \
    && bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3 \
    && rm -rf ~/miniconda3/miniconda.sh

ENV PATH=/root/miniconda3/bin:$PATH

RUN conda install -y \
    black \
    tqdm \
    python=3.10


# Install pip packages
COPY requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt
RUN rm /tmp/requirements.txt

ENTRYPOINT ["top", "-b"]
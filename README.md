# Olympic
---

Welcome to Olympic, a modern Reinforcement Learning framework for researchers and practitioners looking for an alternative to Ray. This project is still in active development and can potentially make changes that are not backwards compatable, doing so only when absolutely necessary to the success of the project. We are looking for collaborators willing to help us build a better framework for the Reinforcement Learning community. 

# Contribution

## Development Containers

### PyCharm
https://www.jetbrains.com/help/pycharm/connect-to-devcontainer.html

### VSCode
https://code.visualstudio.com/docs/devcontainers/containers


# Installation

==Note that the development image will have these packaged within.==

## Ivy

```shell
pip install ivy pillow
```

## Torch

```shell
pip3 install torch torchvision torchaudio
```

## Jax

Please follow the installation directions listed here: https://github.com/google/jax?tab=readme-ov-file#installation

For Nvidia GPUs on x86_64:

```shell
pip install -U "jax[cuda12_pip]" -f https://storage.googleapis.com/jax-releases/jax_cuda_releases.html
```

## Tensorflow

Please follow the installation directions listed here: https://www.tensorflow.org/install/pip

```shell
python3 -m pip install tensorflow[and-cuda]
# Verify the installation:
python3 -c "import tensorflow as tf; print(tf.config.list_physical_devices('GPU'))"
```

## TensorRT

```shell
pip install --upgrade tensorrt
```
[![Build Status](https://travis-ci.org/yinglilu/deeplearning_cpu_singularity.svg?branch=master)](https://travis-ci.org/yinglilu/deeplearning_cpu_singularity)

# A deep learning singularity container

## Aim

- quickly set up medial imaging deep learning research environment on Linux(singularity container based)
- supported frameworks and packages:

    - TensorFlow
    - Keras
    - PyTorch
    - NiftyNet
    - Scikit-learn
    - OpenCV
    - SimpleITK
    - Scikit-image

## Pre-requisite

- install singularity on your host

    ```bash
    # ubuntu
    sudo apt-get install -y singularity-container
    ```

- pull singularity image from singularity hub

    ```bash
    singularity pull --name deeplearning_cpu.simg shub://yinglilu/deeplearning_cpu_singularity
    ```

## Usage

### 1. Enter into singularity container, run command in the container

```bash
# enter into singularity container: imagine it as SSH into (passwordless) another machine
singularity shell /containers/deeplearning_cpu.simg
```

You will get:

```bash
Singularity: Invoking an interactive shell within container...

Singularity deeplearning_cpu.simg:~>
```

You can type command now, for instance:

```bash
python /path/to/<your_script.py>
```

After finishing your work, type

```bash
exit
```

to exit the container.

#### Note: /path/to/

- Singularity will bind your host's $HOME to container's $HOME automatically. That's mean, if you do modification on your host's home directory, you can see the modifications in the container's home directory, and vice versa.

- If current working directory is in your home directory or bind path, Singularity will replicate your current working directory within the container.

    Therefore, `/path/to/` can be a relative path or absolute path of your home or bind path.

## 2. Run singularity container command directly

```bash
singularity exec deeplearning_cpu.simg python /path/to/<your_script.py>
```

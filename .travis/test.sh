#!/bin/bash

image=Singularity.simg

# tensorflow: -W ignore: ignore futurewarning
singularity exec $image python -W ignore -c "import tensorflow as tf; print('TensorFlow version: ' + tf.__version__)" && \
#scikit-image
singularity exec $image python -c "import skimage; print('skimage version: ' + skimage.__version__)" && \

# keras
singularity exec $image python -W ignore -c "import tensorflow.keras as keras;print('Keras version: ' + keras.__version__)" && \

# pytorch
singularity exec $image python -c "import torch;print('pytorch version: ' + torch.__version__)" && \

# torchvision
singularity exec $image python -c "import torchvision; print('torchvision version: '+ torchvision.__version__)" && \

#theano
singularity exec $image python -c "import theano;print('theano version: ' + theano.__version__)" && \

#mxnet
#singularity exec $image python -c "import mxnet;print('mxnet version: ' + mxnet.__version__)" && \

#opencv
singularity exec $image python -c "import cv2; print('Opencv version: ' + cv2.__version__)" && \

#scikit-learn
singularity exec $image python -c "import sklearn; print('sklearn version: ' + sklearn.__version__)" && \

#simpleitk
singularity exec $image python -c "import SimpleITK as sitk; print('SimpleITK version: ' +  sitk.Version_VersionString())" && \

#NiftyNet
singularity exec $image net_download -v

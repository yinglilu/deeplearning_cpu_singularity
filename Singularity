Bootstrap: docker
#Python version: 3.6.4 
#From: continuumio/anaconda3:5.1.0

#Python version: 3.6.8
From: continuumio/miniconda3:4.5.4

%post
export PATH=/opt/conda/bin:$PATH

#DRYRUN=--dry-run
DRYRUN=

#update
apt-get update
conda update conda
pip install --upgrade pip

#tensorflow
conda install $DRYRUN tensorflow==1.12.0
conda install -c anaconda scikit-image==0.14.2

#pytorch
conda install $DRYRUN -c pytorch pytorch-cpu==1.0.1
conda install $DRYRUN -c pytorch torchvision-cpu==0.2.1

#theano
apt-get install -y build-essential
conda install $DRYRUN -c conda-forge theano==1.0.4
conda install mkl-service

#mxnet
#install opencv automatically
#conda install $DRYRUN mxnet==1.1.0

#sonnet
#conda install $DRYRUN -c hcc dm-sonnet==1.27

#opencv
conda install $DRYRUN -c anaconda opencv==3.4.2

#scikit-learn
conda install $DRYRUN -c anaconda scikit-learn==0.20.3

#simpleitk
conda install $DRYRUN -c simpleitk simpleitk==1.2.0

#niftynet
conda install -c anaconda pyyaml==3.13
pip install niftynet==0.5.0

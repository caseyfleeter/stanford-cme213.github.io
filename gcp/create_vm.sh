#!/bin/bash

REGION=us-west1
ZONE=us-west1-b
GPU_TYPE=nvidia-tesla-k80
GPU_COUNT=4

# Config zone.
gcloud config set compute/zone ${ZONE}

# Create GPU instance.
gcloud compute instances create gpu-instance \
    --machine-type n1-standard-4 \
    --accelerator type=${GPU_TYPE},count=${GPU_COUNT} \
    --image-family ubuntu-1604-lts --image-project ubuntu-os-cloud \
    --maintenance-policy TERMINATE --restart-on-failure \
    --metadata startup-script='#!/bin/bash

    # Check for CUDA and try to install.
    # Determine whether or not we are first-time logging in by existence of CUDA
    if ! dpkg-query -W cuda-10-0; then
      # Disable ssh
      service ssh stop

      # Install openmpi
      apt-get update
      apt-get install openmpi-bin openmpi-common libopenmpi-dev -y

      # Install cmake
      apt-get install cmake -y

      curl -O http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604_10.0.130-1_amd64.deb
      dpkg -i ./cuda-repo-ubuntu1604_10.0.130-1_amd64.deb
      apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub
      apt-get update
      apt-get install cuda-10-0 -y
      rm -f ./cuda-repo*.deb
      USER_NAME=`ls /home -Iubuntu`
      echo $'\''\n'\''"# CUDA" >> /home/${USER_NAME}/.bashrc
      echo "export PATH=/usr/local/cuda/bin:\$PATH" >> /home/${USER_NAME}/.bashrc
      echo "export LD_LIBRARY_PATH=/usr/local/cuda/lib64:\$LD_LIBRARY_PATH" >> /home/${USER_NAME}/.bashrc

      apt-get install nvidia-cuda-toolkit -y

      # Download datasets
      TRAIN_IMG_FILE_NAME="train-images-idx3-ubyte.gz"
      TRAIN_LABELS_FILE_NAME="train-labels-idx1-ubyte.gz"
      TEST_IMG_FILE_NAME="t10k-images-idx3-ubyte.gz"
      
      mkdir data
      cd data
      
      echo "Downloading training images..."
      while true; do
        wget -O "$TRAIN_IMG_FILE_NAME" -c "http://yann.lecun.com/exdb/mnist/train-images-idx3-ubyte.gz" && break
      done
      gunzip "$TRAIN_IMG_FILE_NAME"
      
      echo "Downloading training labels..."
      while true; do
        wget -O "$TRAIN_LABELS_FILE_NAME" -c "http://yann.lecun.com/exdb/mnist/train-labels-idx1-ubyte.gz" && break
      done
      gunzip "$TRAIN_LABELS_FILE_NAME"
      
      echo "Downloading test images..."
      while true; do
        wget -O "$TEST_IMG_FILE_NAME" -c "http://yann.lecun.com/exdb/mnist/t10k-images-idx3-ubyte.gz" && break
      done
      gunzip "$TEST_IMG_FILE_NAME"

      cd ..
      
      # Install Armadillo
      echo "Downloading Armadillo Library..."
      wget http://sourceforge.net/projects/arma/files/armadillo-7.800.2.tar.xz
      tar xvfJ armadillo-7.800.2.tar.xz
      cd armadillo-7.800.2
      ./configure
      make
      make install
      cd ..
      rm -rf armadillo-7.800.2*

      # Setup auto shutdown
      wget -O /bin/auto_shutdown.sh https://raw.githubusercontent.com/stanford-cme213/stanford-cme213.github.io/master/gcp/auto_shutdown.sh
      chmod +x /bin/auto_shutdown.sh

      wget -O /etc/init.d/auto_shutdown https://raw.githubusercontent.com/stanford-cme213/stanford-cme213.github.io/master/gcp/auto_shutdown
      chmod +x /etc/init.d/auto_shutdown

      update-rc.d auto_shutdown defaults
      update-rc.d auto_shutdown enable
      service auto_shutdown start

      # Enable ssh
      service ssh start
    fi
    '

echo "Installing necessary libraries. You will be able to log into the VM after several minutes with:
gcloud compute ssh gpu-instance"

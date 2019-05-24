#!/bin/bash

REGION=us-west1
ZONE=us-west1-b
NAME=mpi8

# Config zone.
gcloud config set compute/zone ${ZONE}

# Create GPU instance.
gcloud compute instances create ${NAME} \
    --machine-type n1-highcpu-8 \
    --image-family ubuntu-1604-lts --image-project ubuntu-os-cloud \
    --maintenance-policy TERMINATE --restart-on-failure \
    --metadata startup-script='#!/bin/bash

    # Determine whether or not we are first-time logging in by existence of g++
    if ! dpkg-query -W g++; then
      # Disable ssh
      service ssh stop

      # Install make and g++
      apt-get update
      apt-get install make gcc g++ -y

      # Install openmpi
      apt-get update
      apt-get install openmpi-bin openmpi-common libopenmpi-dev -y

      apt-get install hwloc -y
      apt-get install numactl

      # Install ruby and rmate
      apt install ruby -y && gem install rmate

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
gcloud compute ssh ${NAME}"

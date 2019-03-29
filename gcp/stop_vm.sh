#!/bin/bash

# Config zone.
gcloud config set compute/zone ${ZONE}

# Stop gpu-instance
gcloud compute instances stop gpu-instance

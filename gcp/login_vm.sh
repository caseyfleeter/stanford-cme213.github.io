#!/bin/bash

# Config zone.
gcloud config set compute/zone us-west1-b

gcloud compute instances start gpu-instance
gcloud compute ssh gpu-instance

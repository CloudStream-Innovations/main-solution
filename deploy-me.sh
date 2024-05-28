#!/bin/bash

# BACKEND

# Create a backend.env file if not exist
# This will track the backend creation

if [ ! -f backend.env ]; then
    random=`echo $RANDOM | md5`
    echo "backend="$random > backend.env
fi

source backend.env

## Won't do anything if backend already in place

cd terraform-backend
terraform init
terraform apply -auto-approve -var="backend=$backend"
cd ..

# SOLUTION INFRASTRUCTURE

cd infrastructure
terraform init
terraform plan

#!/bin/bash

# Create a backend.env file if not exist
# This will track the backend creation

if [ ! -f backend.env ]; then
    random=`echo $RANDOM | md5`
    echo "backend="$random > backend.env
fi

source backend.env

echo $backend

cd terraform-backend
terraform init
#terraform apply -auto-approve
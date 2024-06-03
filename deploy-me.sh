#!/bin/bash

# =============================
# Part 1
# S3 BACKEND
# =============================

# Create a backend.env file if not exist
# This will track the backend creation

if [ ! -f backend.env ]; then
    random=`echo $RANDOM | md5`
    echo "backend="$random > backend.env

    # Add other variables
    echo "TFSTATE_BUCKET=terraform-state-"$random >> backend.env
    echo "TFSTATE_KEY=terraform-state-"$random >> backend.env
    echo "TFSTATE_REGION=eu-west-2" >> backend.env

fi

source backend.env

## Won't do anything if backend already in place

cd terraform-backend
terraform init
terraform apply -auto-approve -var="backend=$backend"
cd ..

# =============================
# Part 2
# SOLUTION INFRASTRUCTURE
# =============================

cd infrastructure

# Use the S3 backend created in first part
terraform init \
    -backend-config="bucket=$TFSTATE_BUCKET" \
    -backend-config="key=$TFSTATE_KEY" \
    -backend-config="region=$TFSTATE_REGION"

terraform plan  -out "tfplan"

terraform apply "tfplan"

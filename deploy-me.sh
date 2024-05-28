#!/bin/bash

cd terraform-backend
terraform init
terraform apply -auto-approve
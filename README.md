# CloudStream Innovations

CloudStream-Innovations is a fictious company for the purposes of providing a POC / Demo to Cameramatics.

## Reops in this organisation are:

### main-solution
This is the repo that contains the main-solution as it brings in the other repos as sub-modules for deployment.

### assignment
This repo contains artefacts relevant to the original assignment.

## Developement

### notebooks
This repo contains the notebooks used in this project.  The notebooks show how the data is wrangled with python and how the required reports are put tofether.  There are 7 notebooks.

### output-artifacts
This repository contains the output artifacts of the ETL process using the notebooks. They can be emailed, published, or transferred via FTP using GitHub Actions.  In this case the are pushed to an S3 bucket for static web hosting.

The webpage can be found at this link:  http://cloudstream-innovations-poc-for-demo-of-some-skills.s3-website-eu-west-1.amazonaws.com/#

## Productionisinig

The solution is started to be productionised using airflow.  This is not yet complete as DAGs and Airlfow environemnt are quite fincky with regards to dependencies etc and I would need some more time to complete these properly:

### airflow
This repo contains the dags for the solution.  Docker compose is used to put together a local environment for developing DAGS and dependency files.

### infrastructure
This repo contains the Terraform IaC for this project.   The Terraform code spins up an enviroment in the cloud for deploying an production ready airflow + the DAGs from the airflow folder into the cloud.

- **NOTE** I encounterd an AWS account level hard restriction which I still need to figure out why it happening.  But it did work on the first deployment.  I may need to create a new AWS account.

###terraform-backend
This repo contains the code for Terraform backend.  this supports the infrastructure repo as it provides an S3 backend for the solution that stores the state.

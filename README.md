# CloudStream Innovations
CloudStream-Innovations is a fictitious company created for the purpose of providing a POC/Demo.

## Repositories in this Organisation

### main-solution
This is the repository that contains the main solution, incorporating other repositories as sub-modules for deployment.

### assignment
This repository contains artefacts relevant to the original assignment.

## Development Phase

### notebooks
This repository contains the notebooks used in this project. The notebooks demonstrate how the data is wrangled with Python and how the required reports are assembled. There are seven notebooks.

### output-artifacts

This repository contains the output artefacts of the ETL process using the notebooks. They can be emailed, published, or transferred via FTP using GitHub Actions. In this case, they are pushed to an S3 bucket for static web hosting.

The webpage can be found at this link: http://cloudstream-innovations-poc-for-demo-of-some-skills.s3-website-eu-west-1.amazonaws.com/#

## Productionising

The solution is in the process of being productionised using Airflow. This is not yet complete as DAGs and the Airflow environment have complex dependencies, requiring more time to finalise properly.

### airflow
This repository contains the DAGs for the solution. Docker Compose is used to set up a local environment for developing DAGs and dependency files.

### infrastructure
This repository contains the Terraform IaC for this project. The Terraform code sets up an environment in the cloud for deploying a production-ready Airflow along with the DAGs from the airflow repository.

**NOTE:** I encountered an AWS account-level hard restriction which I still need to figure out. It did work on the first deployment. I may need to create a new AWS account.

### terraform-backend
This repository contains the code for the Terraform backend. This supports the infrastructure repository by providing an S3 backend for the solution that stores the state.


# Terraform-Driven Simple Voting System on Amazon EKS

## Description
This project showcase how a  simple voting system built in Python, utilizing Amazon EKS for deployment and Terraform for infrastructure setup. This project leverages the power of Kubernetes for orchestration and Terraform for automated, scalable infrastructure management.


## Prerequisites

- Install [Terraform](https://www.terraform.io/downloads.html). 
- AWS credentials configured with appropriate permissions.
- Docker installed locally.
- An existing Route 53 hosted zone for your domain.
- Install Kubectl. 


## Scenarios
- Application must be containerized
- COntainerized application must be orchestrated and well managed.
- Infrastructure as code (IaC)
- Ensures the voting app can scale efficiently
- Deploys and manages applications in a cloud environment
- Must be highly available and fault-tolerant

## Tools that solve this Scenarios
- Docker - Helps encapsulate the application and its dependencies in Docker containers (Containerization)
- Kubernetes (via Amazon EKS) - Manage and orchestrate containerized applications to ensure smooth operation (Orchestration).
- Terraform - Automate infrastructure setup (IaC).
- Amazon EKS -  Deploy on a scalable platform that can handle increased load (Scalability)
-  Amazon EKS - Deploy and manage applications in a cloud environment.
- Kubernetes (via Amazon EKS) -  Ensure the application is fault-tolerant and available across multiple nodes (Highly Avaliable).


### Step 1: Clone the Application Source Code

```
git clone https://github.com/OK-CodeClinic/vote_app.git

cd vote_app

```
This repository contains the necessary files to build and deploy the voting application.

### Step 2: Build and Push Docker Image
- Build the Docker Image from the dockerfile
```
docker build -t your-dockerhub-username/vote_app:latest .
```

- Push the Docker Image to Docker Hub:
```
docker login
docker push your-dockerhub-username/vote_app:latest
```

### Step 3: Modify and and Apply the  Terraform Code
- Before running Terraform commands, modify the Terraform code to suit your specific requirements. Update variables, configurations, and other settings as needed in the .tf files.

- Initialize and validate Terraform configuration:
```
terraform init
terraform validate
```
- Apply Terraform Configuration:
```
terraform apply

```
This will create the necessary infrastructure on AWS, including the EKS cluster, node groups, and all other resources. (57 resources in total).

### Step 4: Deploy the Application on EKS
Once the infrastructure is set up, log into your EKS cluster and apply the Kubernetes manifest files to deploy the application.
- Update kubeconfig:
```
aws eks update-kubeconfig --name vote_app_cluster --region us-east-2
```

- Apply Kubernetes Manifests:
```
kubectl apply -f k8s/
```

### Step 5: Verify the Deployment
- Check Pod Status:
```
kubectl get pods
```

- Check Service Status:
```
kubectl get svc
```

You should see your voting application up and running, accessible via the service amazon loadbalancer URL provided by your Kubernetes cluster.


- Boom! App is working on the browser.


### Step 6: Clean Up
It is necessary to clean up the resources after use.
- Run 
```
terraform destroy --auto-approve
```


### Wrap Up
By following these steps, you have successfully deployed a Python voting application on Amazon EKS using Terraform for infrastructure management. This setup not only demonstrates containerization, orchestration, and infrastructure as code but also ensures scalability and high availability for the application. 

##  Author
- Kehinde Omokungbe














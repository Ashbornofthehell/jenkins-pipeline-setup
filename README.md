# Jenkins Container Setup and Pipeline as Code  

This project demonstrates the setup of a Jenkins environment using Docker containers and the implementation of a "Pipeline as Code" example. The goal is to automate the setup and execution of Jenkins and its pipeline processes efficiently.  

---

## **Overview**  
- **Technologies Used:** Docker, Jenkins, GitHub  
- **Features:**  
  - Jenkins setup in a containerized environment.  
  - "Pipeline as Code" to manage build, test, and deployment stages.  
  - Automation scripts for easy setup and execution.  

---

## **Project Structure**  
The repository contains the following key files:  
- `Dockerfile`: Defines the Jenkins container image with necessary configurations.  
- `docker-compose.yml`: Manages the Jenkins service and volume setup.  
- `Jenkinsfile`: Describes the pipeline stages in Jenkins.  
- `setup.sh`: Automates the entire setup process, from container creation to pipeline initialization.  

---

## **How to Run the Project**  
Follow these steps to set up and execute the project:  

### **Step 1: Clone the Repository**  
```bash
git clone <repository_url>
cd <repository_folder>
Step 2: Run the Setup Script
Run the setup.sh script to automate the process:

bash
Copiar código
chmod +x setup.sh
./setup.sh
Step 3: Access Jenkins
Open a browser and go to http://localhost:8080.
Retrieve the initial admin password:
bash
Copiar código
docker exec -it jenkins-server cat /var/jenkins_home/secrets/initialAdminPassword
Complete the Jenkins setup wizard.
Step 4: Configure the Pipeline
Create a new Pipeline Job in Jenkins.
Connect it to this repository and select the Jenkinsfile for pipeline configuration.
Run the pipeline to see the stages (Build, Test, Deploy).
Pipeline Stages
The pipeline has three primary stages:

Build: Simulates building the application (e.g., compiling source code).
Test: Executes a mock testing step to validate the build.
Deploy: Simulates deployment to a target environment.
The pipeline is fully automated and defined in the Jenkinsfile.

Setup Automation
The setup.sh script includes commands to:

Clone the repository.
Build and start the Jenkins container.
Display the Jenkins URL for easy access.
Troubleshooting
Jenkins container not starting:
Ensure Docker is installed and running on your machine. Use docker ps to verify.
Cannot access http://localhost:8080:
Check if the port is already in use. Change it in the docker-compose.yml file if needed.
Pipeline errors:
Verify that the Jenkinsfile syntax is correct and all dependencies are installed in the container.

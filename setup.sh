#!/bin/bash
git clone https://github.com/Ashbornofthehell/jenkins-pipeline-setup 
cd jenkins-pipeline-setup
docker-compose up -d
echo "Jenkins está corriendo en http://localhost:8080"

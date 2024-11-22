#!/bin/bash
git clone <URL del repositorio >
cd jenkins-pipeline-setup
docker-compose up -d
echo "Jenkins está corriendo en http://localhost:8080"

#!/bin/bash

# Update system
sudo yum update -y

# Install Docker
sudo yum install -y docker
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker ec2-user

# Install Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Create necessary directories
mkdir -p nginx

# Install git
sudo yum install -y git

# Clone your repository (uncomment and modify if using git)
# git clone your-repo-url

# Set permissions
sudo chown -R ec2-user:ec2-user .

# Create volume directory for PostgreSQL
mkdir -p postgres_data
sudo chown -R 999:999 postgres_data  # 999 is the postgres user in the container

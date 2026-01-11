# Docker CI + Push to AWS ECR using Ansible

[![Ansible](https://img.shields.io/badge/Ansible-automation-blue.svg)](https://www.ansible.com/) 
[![Docker](https://img.shields.io/badge/Docker-container-blue.svg)](https://www.docker.com/) 
[![AWS ECR](https://img.shields.io/badge/AWS-ECR-orange.svg)](https://aws.amazon.com/ecr/)

Automate building Docker images, configuring AWS CLI, and pushing images to AWS ECR using **Ansible**.
---

## Workflow Diagram

```text
          ┌─────────────┐
          │  Source     │
          │ Docker App  │
          └─────┬──────┘
                │
                ▼
        ┌───────────────┐
        │ Ansible CI     │
        │ Playbooks      │
        └─────┬─────────┘
              │
              ▼
        ┌───────────────┐
        │  Docker Image  │
        │  Build & Tag   │
        └─────┬─────────┘
              │
              ▼
        ┌───────────────┐
        │  AWS ECR Repo  │
        │ Push Image     │
        └───────────────┘
Features

Build Docker images from app source.

Automate Docker installation and setup on target host.

Install AWS CLI and configure credentials securely using Ansible Vault.

Log in to AWS ECR, tag, and push images.

Supports Ubuntu EC2 target hosts.

Project Structure
ansible-docker-k8s-ci/
│
├── ansible/
│   ├── inventory/dev.ini             # Target hosts
│   ├── playbooks/
│   │   ├── build_image.yml           # Build Docker image
│   │   ├── install_docker.yml        # Install Docker
│   │   ├── docker_postinstall.yml    # Post-install steps
│   │   ├── push_to_ecr.yml           # Push Docker image to ECR
│   │   ├── run_container.yml         # Run Docker container
│   │   └── ci_docker.ecr.yml         # Full CI + ECR push
│   └── ansible.cfg
│
├── docker/
│   ├── Dockerfile                     # Nginx Dockerfile
│   └── index.html                     # Sample web page
│
├── vault.yml                           # AWS secrets (Ansible Vault)
└── README.md
Prerequisites

Ansible installed on control machine.

Target host with Ubuntu and Python installed.

Docker installed on target (playbooks can automate this).

AWS ECR repository created (example: kishor2107-ecrrepo-mumbai).

AWS credentials stored in vault.yml.

Setup Vault
ansible-vault create vault.yml


Add your AWS credentials:

aws_access_key_id: <YOUR_ACCESS_KEY>
aws_secret_access_key: <YOUR_SECRET_KEY>


Create a vault password file for automation:

echo "123" > ~/.vault_pass.txt
chmod 600 ~/.vault_pass.txt

<img width="1640" height="850" alt="Screenshot from 2026-01-11 14-47-52" src="https://github.com/user-attachments/assets/79d2ad3b-5824-4b73-9952-8cc2a43e921d" />

# 🚀 Ansible + Docker + AWS ECR + EKS CI/CD Project

## 📌 Project Overview
This project demonstrates a **real-world DevOps CI/CD pipeline** using **Ansible, Docker, AWS ECR, EKS, and Terraform**.

The pipeline automates:
- Docker installation
- Image build and tagging
- Secure push to AWS ECR
- Kubernetes deployment on AWS EKS
- Infrastructure provisioning using Terraform
- Secure secrets management using Ansible Vault

This project is **interview-ready** and suitable for a **DevOps portfolio**.

---

## 🏗 Architecture
```
Developer → GitHub → Ansible CI
                ↓
          Docker Image Build
                ↓
              AWS ECR
                ↓
              AWS EKS
                ↓
           LoadBalancer Service
```

---

## 🛠 Tech Stack
| Tool | Purpose |
|----|----|
| Ansible | Automation & Configuration Management |
| Docker | Containerization |
| AWS ECR | Private Container Registry |
| AWS EKS | Managed Kubernetes |
| Terraform | Infrastructure as Code |
| Kubernetes | Container Orchestration |
| Ansible Vault | Secrets Management |

---

## 📁 Project Structure
```
ansible-docker-k8s-ci/
├── ansible/
│   ├── inventory/
│   ├── playbooks/
│   ├── roles/
│   │   ├── docker
│   │   ├── docker_build
│   │   ├── aws_cli
│   │   ├── aws_config
│   │   ├── ecr_push
│   │   └── eks_deploy
│   └── ansible.cfg
├── docker/
│   ├── Dockerfile
│   └── index.html
├── k8s/
│   ├── deployment.yaml
│   └── service.yaml
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
├── vault.yml
└── README.md
```

---

## 🔐 Security Best Practices
- AWS credentials stored using **Ansible Vault**
- IAM roles for EKS nodes to pull images from ECR
- No hardcoded secrets
- Least privilege IAM policies

---

## 🔁 CI Pipeline (Build & Push Image)
```bash
ansible-playbook \
-i ansible/inventory/dev.ini \
ansible/playbooks/site.yml \
--vault-password-file ~/.vault_pass.txt
```

### CI Steps
1. Install Docker
2. Build Docker image
3. Install AWS CLI
4. Authenticate to AWS ECR
5. Push image to ECR

---

## 🚀 CD Pipeline (Deploy to EKS)
```bash
ansible-playbook \
-i ansible/inventory/dev.ini \
ansible/playbooks/deploy_eks.yml \
--vault-password-file ~/.vault_pass.txt
```

### CD Steps
1. Update kubeconfig
2. Deploy Kubernetes manifests
3. Expose application via LoadBalancer

---

## ☸ Kubernetes Resources
- **Deployment**: Runs containerized Nginx app
- **Service**: Exposes app using AWS LoadBalancer

```bash
kubectl get pods
kubectl get svc
```

---

## 🏗 Terraform – EKS Provisioning
```bash
terraform init
terraform plan
terraform apply
```

Terraform provisions:
- VPC & Subnets
- EKS Cluster
- Managed Node Groups
- IAM Roles & Policies

---

## 🧠 Interview Highlights
- End-to-end CI/CD automation
- Secure secrets handling
- Cloud-native Kubernetes deployment
- Infrastructure as Code
- Production DevOps practices

---

## 💡 Real-World Use Case
- Enterprise CI/CD pipelines
- Microservices deployment
- Kubernetes production setup
- Cloud DevOps automation

---

## 📌 Author
**Kishor Patil**  
DevOps Engineer | AWS | Kubernetes | Terraform | Ansible

---

⭐ If you found this project useful, give it a star on GitHub!

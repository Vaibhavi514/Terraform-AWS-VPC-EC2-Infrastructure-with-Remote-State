# Terraform-AWS-VPC-EC2-Infrastructure-with-Remote-State

This project demonstrates how to provision AWS infrastructure using **Terraform** with a **clean folder separation** approach.  
The infrastructure is split into two independent parts:

- **VPC Infrastructure** (network layer)
- **EC2 Infrastructure** (compute layer)

The EC2 setup consumes VPC details using **Terraform Remote State**, following real-world best practices.

---

## 🏗️ Architecture Overview

The project creates:

### VPC Layer
- Custom VPC
- Public Subnet
- Internet Gateway (IGW)
- Route Table with internet access
- Route Table association with subnet

### EC2 Layer
- EC2 instance launched inside the existing VPC
- Security Group allowing SSH access
- Uses subnet and VPC from remote state (no hardcoding)

---

---

## 🔧 Technologies Used

- Terraform
- AWS (VPC, EC2, Security Groups)
- Terraform Remote State (local backend)
- Amazon Linux AMI

---

## 🚀 How to Deploy

### 1️⃣ Deploy VPC Infrastructure

```bash
cd vpc
terraform init
terraform plan
terraform apply

2️⃣ Deploy EC2 Infrastructure
cd ../ec2
terraform init
terraform plan
terraform apply

🔐 Prerequisites

AWS account

AWS CLI configured

Terraform installed

Existing EC2 Key Pair in AWS

🧠 Key Concepts Demonstrated

Infrastructure as Code (IaC)

Terraform state management

Terraform Remote State usage

Decoupled infrastructure design

Secure and reusable infrastructure patterns

👤 Author

Vaibhavi Ghadge
Aspiring Cloud & DevOps Engineer


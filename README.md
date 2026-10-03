# Terraform Modules App

A modular Infrastructure as Code (IaC) project built using **Terraform and AWS**. This project demonstrates how to create and manage AWS infrastructure using reusable Terraform modules.

## 🚀 Project Overview

The purpose of this project is to simplify AWS infrastructure provisioning by using Terraform modules. It separates infrastructure resources into individual configurations, making the code reusable, maintainable, and scalable.

## 🛠️ Technologies Used

- **Terraform** – Infrastructure as Code
- **AWS** – Cloud Infrastructure
- **Amazon EC2** – Virtual Machine
- **Amazon S3** – Object Storage
- **Amazon DynamoDB** – NoSQL Database
- **Git & GitHub** – Version Control

## 📂 Project Structure

```text
Terraform-modules-app/
│
├── infra-app/
│   ├── dyanmodb.tf
│   ├── ec2.tf
│   ├── s3.tf
│   └── variables.tf
│
├── main.tf
├── providers.tf
├── terrafrom.tf
├── .gitignore
└── README.md
```

## ⚙️ AWS Resources

| Resource | Purpose |
|---|---|
| Amazon EC2 | Compute infrastructure |
| Amazon S3 | Object storage |
| Amazon DynamoDB | NoSQL database |
| Terraform Modules | Reusable infrastructure components |

## 📋 Prerequisites

Before running this project, make sure you have:

- Terraform installed
- AWS CLI installed
- AWS account
- AWS credentials configured
- Git installed

## 🔧 Getting Started

**1. Clone the repository**

```bash
git clone https://github.com/YOUR-USERNAME/Terraform-modules-app.git
```

**2. Navigate to the project directory**

```bash
cd Terraform-modules-app
```

**3. Initialize Terraform**

```bash
terraform init
```

**4. Format Terraform files**

```bash
terraform fmt -recursive
```

**5. Validate the configuration**

```bash
terraform validate
```

**6. Preview infrastructure changes**

```bash
terraform plan
```

**7. Deploy AWS infrastructure**

```bash
terraform apply
```

**8. Destroy infrastructure when no longer needed**

```bash
terraform destroy
```

## 🔐 Security Best Practices

- Never upload AWS Access Keys or Secret Keys to GitHub.
- Use AWS CLI profiles or IAM roles for authentication.
- Keep sensitive `.tfvars` files out of version control.
- Ignore Terraform state files and `.terraform/` directory.
- Use remote state storage for team collaboration.

## 🎯 Project Objectives

- Understand Terraform modules.
- Provision AWS resources using Infrastructure as Code.
- Organize infrastructure into reusable components.
- Practice Terraform initialization, validation, planning and deployment.
- Follow secure infrastructure management practices.

## 👨‍💻 Author

**Vishal Singh**

Aspiring DevOps / Cloud Engineer

GitHub: [Your GitHub Profile](https://github.com/YOUR-USERNAME)

---

⭐ If you find this project useful, feel free to explore and learn from it.

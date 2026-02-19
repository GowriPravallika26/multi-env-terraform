# multi-env-terraform
# Multi-Environment Infrastructure using Terraform

## Project Overview
This project demonstrates how to manage multiple environments (Development, Staging, and Production) using Terraform workspaces and automate validation using GitHub Actions (CI).

The goal is to follow DevOps best practices for Infrastructure as Code (IaC) by ensuring environment isolation, clean repository management, and automated checks before deployment.

---

## Features

- Infrastructure provisioning using Terraform
- Environment isolation using Terraform workspaces
- Separate configuration using `.tfvars` files
- Automated Terraform validation using GitHub Actions
- Clean repository structure with proper `.gitignore`

---

## Tools Used

- Terraform
- Git
- GitHub
- GitHub Actions
- AWS (Cloud Provider)

---

## Project Structure

```
multi-env-terraform/
│
├── backend.tf
├── main.tf
├── variables.tf
├── locals.tf
├── outputs.tf
│
├── dev.tfvars
├── staging.tfvars
├── production.tfvars
│
├── modules/
│   ├── networking/
│   │     ├── main.tf
│   │     ├── variables.tf
│   │     └── outputs.tf
│   │
│   ├── compute/
│         ├── main.tf
│         ├── variables.tf
│         └── outputs.tf
│
└── .github/
|   └── workflows/
|        └── terraform.yml
│
├── README.md
└── .gitignore
```
---

## Environments

This project supports three environments:

- Development
- Staging
- Production

Each environment uses:
- Separate `.tfvars` file
- Separate Terraform workspace
- Isolated state

---

## How to Run Locally

### Initialize Terraform
```bash
terraform init
```

### Create or Select Workspace

For example, staging:
```bash
terraform workspace select staging || terraform workspace new staging
```

### Plan Infrastructure
```bash
terraform plan -var-file=staging.tfvars
```

### Apply Changes
```bash
terraform apply -var-file=staging.tfvars
```

---

## CI Workflow

The GitHub Actions workflow:

- Triggers on pull requests to `main`
- Runs:
  - `terraform init`
  - `terraform validate`
  - `terraform plan`
- Ensures infrastructure code is correct before merging

This prevents broken infrastructure changes from reaching production.

---

## State Management

- Local state is ignored using `.gitignore`
- `.terraform/` folder is not committed
- `terraform.tfstate` is not pushed to GitHub
- State isolation is achieved using workspaces

---

## Key Concepts Implemented

- Infrastructure as Code (IaC)
- Multi-environment setup
- CI automation
- Variable precedence
- DevOps best practices

---

## Learning Outcome

- Learned how to manage multiple environments using Terraform
- Understood how CI improves reliability
- Practiced safe state management
- Gained hands-on DevOps experience

---

## Author

N Gowri Pravallika


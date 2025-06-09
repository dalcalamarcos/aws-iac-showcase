# AWS IaC Showcase - Free Tier Infrastructure Deployment

This project demonstrates a fully modular and cost-free infrastructure deployment on AWS using Terraform. It is designed as a technical showcase for Infrastructure as Code (IaC), cloud architecture fundamentals, and container provisioning — all within the AWS Free Tier limits.

## 🚀 Goals

- Fully modular Terraform setup
- Secure and minimal AWS architecture
- Docker container provisioning via EC2
- Zero-cost deployment on AWS Free Tier

---

## 🧱 Architecture Overview

> 💡 _Note_: This project uses a single **public subnet** for simplicity. However, the VPC is CIDR-planned to leave room for a future **private subnet** (e.g., `10.0.0.0/24`) for backend services, databases, or NAT Gateway setups. This follows best practices in scalable infrastructure design.

The networking layer includes:

- ✅ Custom VPC
- ✅ Public Subnet
- ✅ Internet Gateway
- ✅ Route Table + Association
- ✅ Security Group
- ✅ EC2 Instance

All components are provisioned via modular Terraform code.

---

## 📁 Project Structure

```
aws-iac-showcase/
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
├── modules/
│   ├── compute/               # EC2, user data, Docker (upcoming)
│   ├── security/              # Security Group, Key Pair (upcoming)
│   └── networking/
│       ├── vpc/               # VPC creation
│       ├── subnet/            # Public subnet
│       ├── internet_gateway/  # IGW
│       └── route_table/       # Route table + association
```

---

## 🛠️ Technologies Used

- **Terraform** (modular structure, reusable modules)
- **AWS** (Free Tier resources only)
- **Docker** (container provisioning via EC2 `user_data`)
- **Git & GitHub** (version control, public code review)

---

## 🧪 How to Use

> ⚠️ You must have AWS credentials configured via CLI or environment variables.

1. Clone this repository:
   ```bash
   git clone https://github.com/dalcalamarcos/aws-iac-showcase.git
   cd aws-iac-showcase
   ```

2. Initialize Terraform:
   ```bash
   terraform init
   ```

3. Review the execution plan:
   ```bash
   terraform plan
   ```

4. Apply the changes:
   ```bash
   terraform apply
   ```

---

## 📎 Notes

- All infrastructure is designed to stay within Free Tier.
- Destroy your stack after use to avoid idle costs:
  ```bash
  terraform destroy
  ```

---

## 👨‍💻 Author

**Marcos Alcala**  
DevOps Engineer in training — passionate about automation, cloud, and clean infrastructure.

[LinkedIn](https://www.linkedin.com/in/marcos-alcala-037066142/) • [GitHub](https://github.com/dalcalamarcos)

---

## 📌 License

MIT License — free to use and adapt.
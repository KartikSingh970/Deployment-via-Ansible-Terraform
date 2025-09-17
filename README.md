# 🚀 NodeJS + Nginx Deployment via Ansible + Terraform EC2

This project demonstrates how to deploy a **static NodeJS app** (HTML + JS) on an **AWS EC2 instance** using **Terraform** and **Ansible**.

---

## 📁 Project Structure

ansible.ini
index.html
index.js
main.tf
playbook.yml
provider.tf
Screenshots/
securitygroup.tf


- ⚡ **Terraform**: Creates EC2 instance, security groups, and key pair (manual in this repo).  
- 🛠️ **Ansible**: Installs Nginx, deploys `index.html` and `index.js`.  
- 📸 **Screenshots/**: Contains output screenshots from deployment.  

---

## 📝 Prerequisites

- AWS CLI configured (`aws configure`)  
- Terraform installed  
- Ansible installed  
- PEM key file for EC2 (do **not** commit this to GitHub)  

---

## 🚀 Deployment Steps

1. **Terraform**  
```bash
terraform init
terraform apply


Creates EC2 instance and security group.

SSH into EC2 (optional, for verification)

ssh -i <your-key>.pem ec2-user@<EC2-public-IP>


Ansible

Update ansible.ini with your EC2 public IP and key path.

ansible-playbook -i ansible.ini playbook.yml


Installs Nginx and deploys the static site.

View the site

Open in browser: 🌐 http://<EC2-public-IP>/

⚠️ Notes

NodeJS port 3050 is configured in this deployment.

PEM files and Terraform state files are excluded from Git for security.

📸 Screenshots

See the Screenshots/ folder for output of Terraform and Ansible runs.

✍️ Author

Kartik Singh

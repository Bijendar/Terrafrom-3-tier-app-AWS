🚀 3-Tier Architecture on AWS using Terraform 🌐
📋 Overview
This project deploys a 3-Tier Architecture on AWS using Terraform. It demonstrates how to configure and provision the following infrastructure components:

🌐 VPC (Virtual Private Cloud): A private network within AWS.

🖥️ EC2: Virtual servers to run applications.

💾 RDS (Relational Database Service): Managed MySQL database.

🔄 ALB (Application Load Balancer): Distributes incoming application traffic.

This project is structured to support both Development (dev) and Production (prod) environments, allowing easy configuration and deployment of infrastructure in multiple environments.

🔧 Architecture
This project follows a typical 3-tier application architecture:

🖥️ Front-end Tier (ALB): An Application Load Balancer (ALB) distributes the incoming application traffic to the EC2 instances.

⚙️ Application Tier (EC2): EC2 instances run the application logic.

💾 Database Tier (RDS): An RDS MySQL Database stores application data.

All components are deployed within a VPC (Virtual Private Cloud) to ensure isolation and security.

📂 Directory Structure
The directory structure of this repository is organized as follows:

r
Copy
Edit
terraform-3tier-app/
├── environments
│   ├── dev
│   │   ├── main.tf                # Dev environment infrastructure setup
│   │   ├── terraform.tfvars       # Dev environment variable values
│   │   └── variables.tf           # Dev environment variables definitions
│   └── prod
│       ├── main.tf                # Prod environment infrastructure setup
│       ├── terraform.tfvars       # Prod environment variable values
│       └── variables.tf           # Prod environment variables definitions
├── main.tf                        # Root configuration, which calls the modules
├── modules
│   ├── alb
│   │   ├── main.tf                # ALB setup
│   │   ├── outputs.tf             # ALB outputs
│   │   └── variables.tf           # ALB variables
│   ├── ec2
│   │   ├── main.tf                # EC2 instance setup
│   │   ├── outputs.tf             # EC2 outputs
│   │   └── variables.tf           # EC2 variables
│   ├── rds
│   │   ├── main.tf                # RDS instance setup
│   │   ├── outputs.tf             # RDS outputs
│   │   └── variables.tf           # RDS variables
│   └── vpc
│       ├── main.tf                # VPC setup
│       ├── outputs.tf             # VPC outputs
│       └── variables.tf           # VPC variables
├── outputs.tf                     # Root-level outputs
└── variables.tf                   # Root-level variables
🔑 Key Files
main.tf: Contains the root infrastructure setup, including calling different modules for VPC, EC2, RDS, and ALB.

variables.tf: Contains all variable definitions for the root configuration.

outputs.tf: Specifies the outputs that Terraform will return after deployment (e.g., public IP addresses, RDS endpoint, etc.).

terraform.tfvars: Contains environment-specific values for dev and prod environments (e.g., VPC CIDR, EC2 instance types, RDS credentials).

🛠️ Prerequisites
Before running the Terraform code, make sure you have the following:

Terraform: Install Terraform by following the official documentation: Terraform Installation.

AWS Account: Ensure you have access to an AWS account and have IAM permissions to create VPC, EC2, RDS, and ALB resources.

AWS CLI: Install and configure AWS CLI with your credentials: AWS CLI Configuration.

🚀 How to Use
1️⃣ Clone the Repository
Clone this repository to your local machine:

bash
Copy
Edit
git clone https://github.com/your-username/terraform-3tier-app.git
cd terraform-3tier-app
2️⃣ Modify Variables
In the environments/dev/terraform.tfvars and environments/prod/terraform.tfvars files, update the following values with your environment-specific configurations:

vpc_cidr_block: CIDR block for the VPC.

subnet_cidr_block_public: CIDR block for the public subnet.

subnet_cidr_block_private: CIDR block for the private subnet.

ec2_instance_type: EC2 instance type (e.g., t2.micro).

rds_db_name, rds_db_user, rds_db_password: RDS database name, user, and password.

rds_security_group_id, rds_subnet_ids: Security group ID and subnet IDs for RDS.

alb_security_group_id: Security group ID for the Application Load Balancer.

3️⃣ Initialize Terraform
Run terraform init to initialize Terraform and download the necessary provider plugins:

bash
Copy
Edit
terraform init
4️⃣ Plan the Infrastructure
Run terraform plan to review the changes Terraform will make to your AWS account:

bash
Copy
Edit
terraform plan -var-file=environments/dev/terraform.tfvars
5️⃣ Apply the Infrastructure
Run terraform apply to create the infrastructure on AWS:

bash
Copy
Edit
terraform apply -var-file=environments/dev/terraform.tfvars
Terraform will prompt you to confirm the changes. Type yes to proceed with the deployment.

6️⃣ Verify the Deployment
Once the infrastructure is deployed, you can verify the following:

EC2 instances: Check if the EC2 instances are running.

RDS database: Verify the RDS database is available.

ALB: Access the ALB to ensure it's distributing traffic.

7️⃣ Destroy the Infrastructure
To clean up the resources, run terraform destroy:

bash
Copy
Edit
terraform destroy -var-file=environments/dev/terraform.tfvars
💡 Notes
This setup assumes that you have an AWS account and the necessary IAM roles to create resources.

Always keep your AWS credentials safe and avoid hardcoding them in Terraform files. Use AWS CLI or IAM roles for accessing AWS.

✨ Contributing
Feel free to fork the repository, make changes, and submit pull requests. If you encounter any issues, feel free to open an issue on GitHub.

🚀 3-Tier Architecture on AWS using Terraform 🌐
📋 Overview
This project deploys a 3-Tier Architecture on AWS using Terraform, demonstrating the configuration and provisioning of the following infrastructure components:

🌐 VPC (Virtual Private Cloud): A private network within AWS.

🖥️ EC2 (Elastic Compute Cloud): Virtual servers to run applications.

💾 RDS (Relational Database Service): Managed MySQL database.

🔄 ALB (Application Load Balancer): Distributes incoming application traffic.

🌐 Internet Gateway (IG): Enables internet access for the public subnets in the VPC.

This project supports Development (dev) and Production (prod) environments, making it easy to deploy infrastructure across different environments.

🔧 Architecture
This project follows a 3-Tier Application Architecture:

🖥️ Front-end Tier (ALB)

The Application Load Balancer (ALB) distributes incoming traffic to the EC2 instances.

⚙️ Application Tier (EC2)

EC2 instances host and run your application logic.

💾 Database Tier (RDS)

RDS MySQL Database stores application data.

🌐 Internet Gateway (IG)

IG provides internet connectivity for EC2 instances in the public subnet.

All components are deployed within a VPC (Virtual Private Cloud) to ensure isolation and security.

📂 Directory Structure
plaintext
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
│   ├── vpc
│   │   ├── main.tf                # VPC setup
│   │   ├── outputs.tf             # VPC outputs
│   │   └── variables.tf           # VPC variables
│   └── igw
│       ├── main.tf                # IG setup
│       ├── outputs.tf             # IG outputs
│       └── variables.tf           # IG variables
├── outputs.tf                     # Root-level outputs
└── variables.tf                   # Root-level variables
🔑 Key Files
main.tf: Root configuration calling different modules for VPC, EC2, RDS, ALB, and IG.

variables.tf: Defines variables for root configuration.

outputs.tf: Specifies Terraform outputs (e.g., public IP addresses, RDS endpoint).

terraform.tfvars: Environment-specific values (e.g., VPC CIDR, EC2 types, RDS credentials).

igw/main.tf: Configures and attaches the Internet Gateway (IG) to the VPC.

🛠️ Prerequisites
Ensure you have the following before running the Terraform code:

Terraform: Install Terraform by following official documentation.

AWS Account: Ensure you have IAM permissions to create AWS resources.

AWS CLI: Install and configure AWS CLI with your credentials. AWS CLI Setup.

🚀 How to Use
1️⃣ Clone the Repository
Clone the repository to your local machine:

bash
Copy
Edit
git clone https://github.com/Bijendar/Terrafrom-3-tier-app-AWS.git
cd terraform-3tier-app
2️⃣ Modify Variables
Update the terraform.tfvars in the environments/dev and environments/prod directories:

vpc_cidr_block: CIDR block for VPC.

subnet_cidr_block_public: CIDR block for public subnet.

subnet_cidr_block_private: CIDR block for private subnet.

ec2_instance_type: EC2 instance type (e.g., t2.micro).

rds_db_name, rds_db_user, rds_db_password: RDS database details.

alb_security_group_id, igw_security_group_id: Security groups for ALB and IG.

3️⃣ Initialize Terraform
Initialize Terraform to download necessary provider plugins:

bash
Copy
Edit
terraform init
4️⃣ Plan the Infrastructure
Review the changes Terraform will make to your AWS account:

bash
Copy
Edit
terraform plan -var-file=environments/dev/terraform.tfvars
5️⃣ Apply the Infrastructure
Deploy the infrastructure to AWS:

bash
Copy
Edit
terraform apply -var-file=environments/dev/terraform.tfvars
Terraform will prompt you to confirm. Type yes to proceed.

6️⃣ Verify the Deployment
After deployment, verify the following:

EC2 Instances: Ensure EC2 instances are running.

RDS Database: Verify the RDS instance is available.

ALB: Check if the ALB is distributing traffic correctly.

Internet Gateway: Confirm the IG is attached and providing internet access.

7️⃣ Destroy the Infrastructure
To clean up, run:

bash
Copy
Edit
terraform destroy -var-file=environments/dev/terraform.tfvars
💡 Notes
Ensure you have the necessary IAM roles and AWS credentials.

Never hardcode AWS credentials in your Terraform files; use IAM roles or AWS CLI for secure access.

✨ Contributing
Feel free to fork the repository, make changes, and submit pull requests. If you encounter any issues, open an issue on GitHub.
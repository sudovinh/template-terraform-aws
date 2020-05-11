# terraform-template-aws
Using this for my future aws project terraform template

```bash
├── README.md
├── aws # Main Infrastructure Module 
│   ├── aws.tf # Basic AWS setup 
│   ├── cloudwatch.tf # Cloudwatch setup
│   ├── ec2.tf # Setup EC2 Server
│   ├── network.tf # Setup VPC + other network services
│   ├── outputs.tf # Main Infrastructure Outputs
│   ├── policies # Policy Folder
│   │   └── assume_role_policy.tf
│   ├── role.tf # Setup IAM Roles
│   ├── security-groups.tf # Create Security Groups
│   └── sns.tf # Setup SNS
├── config.tf # Variables for all modules
├── dns # DNS Module 
│   ├── dns.tf # Setup DNS
│   └── outputs.tf # DNS outputs
└── terraform.tf # Main Terraform File
```



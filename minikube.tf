module "minikube" {
  source = "github.com/scholzj/terraform-aws-minikube"

  aws_region    = "us-east-1"
  cluster_name  = "roboshop-minikube"
  aws_instance_type = "t3.medium"
  ssh_public_key = "~/.ssh/practicedevops.pub"
  aws_subnet_id = "subnet-0bdb646bfc5bb6284"
  #ami_image_id = "ami-b81dbfc5"
  hosted_zone = "eternaltrainings.online"
  hosted_zone_private = false

  tags = {
    Application = "Minikube"
  }
}
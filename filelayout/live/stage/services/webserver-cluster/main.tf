provider "aws" {
  region = "us-east-2"
}

module "webserver_cluster" {
  source = "github.com/4bdu1/terraform-modules//services/webserver-cluster?ref=v0.0.1"

  cluster_name           = "webservers-stage"
  db_remote_state_bucket = "terraform-state-pt-test"
  db_remote_state_key    = "stage/data-stores/mysql/terraform.tfstate"
  instance_type          = "t2.micro"
  min_size               = 2
  max_size               = 2
}

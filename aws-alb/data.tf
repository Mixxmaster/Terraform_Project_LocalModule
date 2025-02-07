data "terraform_remote_state" "vpc_remote_data" {
  backend = "s3"
  config = {
    bucket  = "myterraform-bucket-state-parkmin-t"
    key     = "${var.name}/vpc/terraform.tfstate"
    profile = "terraform_user"
    region  = "ap-northeast-2"
  }
}
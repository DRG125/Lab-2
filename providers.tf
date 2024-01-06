terraform {
  backend "s3" {
    bucket = "dg-tfstate-bkt" #change this
    key    = "terraform.tfstate"
    region = "us-east-1"
    #dynamodb_table = "my-lock-table" # optional (Only if you created the DynamoDB table in step 4) 
  }
}

provider "aws" {
  region = "us-east-1"
  
}
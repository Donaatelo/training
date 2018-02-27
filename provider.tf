provider "aws" {
  region = "${var.region}"
  access_key = "AKIAJKZHTIKQSOMOYWWQ"
  secret_key = "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"
  assume_role {
    role_arn = "${var.role_arn}"
  }
}
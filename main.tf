#----------------------------------------------------------
resource "aws_elasticsearch_domain" "main" {
  domain_name = "${var.elastic_search_name}"
  elasticsearch_version = "7.4"

  cluster_config {
    instance_type = "${var.instance_type}"
    instance_count = "1"
  }

  advanced_options {
    "rest.action.multi.allow_explicit_index" = "true"
  }
    access_policies = <<CONFIG
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "AWS": "*"
      },
      "Action": "es:*",
      "Resource": "arn:aws:es:${var.region}:${var.id_account}:domain/${var.elastic_search_name}/*"
    }
  ]
}
CONFIG

  ebs_options {
    ebs_enabled = true
    volume_type = "gp2"
    volume_size = "${var.volume_size}"
  }
}

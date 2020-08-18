variable "elastic_search_name" {
  type        = "string"
  description = "indicar el nombre para el elastic search"
}

variable "instance_type" {
  type        = "string"
  description = "indicar el tamaño de elastic search ejemplo: dev t2.small.elasticsearch prod m5.large.elasticsearch"
}

variable "id_account" {
  type        = "string"
  description = "indicar el id de la cuenta ejemplo: 933852400332"
}


variable "volume_size" {
  type        = "string"
  description = "indicar el tamaño del disco ejemplo: 30"
}


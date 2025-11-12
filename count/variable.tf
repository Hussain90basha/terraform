variable "instances" {
    default = [ "mongodb", "redis", "mysql", "rabbitmq" ] 
}

variable "zone_id" {
    default = "Z01416561NVDH9FJJ3T1D"  
}

variable "domain_name" {
    default = "eliyas.fun"  
}
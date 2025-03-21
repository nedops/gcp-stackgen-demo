variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "GCP zone"
  type        = string
  default     = "us-central1-a"
}

variable "cluster_name" {
  description = "Name of the GKE cluster"
  type        = string
  default     = "private-gke-cluster"
}

variable "network_name" {
  description = "Name of the VPC network"
  type        = string
  default     = "gke-network"
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
  default     = "gke-subnet"
}

variable "subnet_cidr" {
  description = "CIDR range for the subnet"
  type        = string
  default     = "10.0.0.0/16"
}

variable "pod_range_name" {
  description = "Name of the pod IP range"
  type        = string
  default     = "pod-range"
}

variable "pod_range_cidr" {
  description = "CIDR range for pods"
  type        = string
  default     = "10.1.0.0/16"
}

variable "svc_range_name" {
  description = "Name of the service IP range"
  type        = string
  default     = "svc-range"
}

variable "svc_range_cidr" {
  description = "CIDR range for services"
  type        = string
  default     = "10.2.0.0/16"
}

variable "master_ipv4_cidr_block" {
  description = "CIDR block for the GKE master nodes"
  type        = string
  default     = "172.16.0.0/28"
}

variable "bastion_disk_encryption_key" {
  description = "Customer supplied encryption key for bastion host disk (must be base64 encoded)"
  type        = string
  sensitive   = true
}

terraform {
  required_providers {
    proxmox = {
      source = "telmate/proxmox"
      version = "2.9.11"
    }
  }
}

provider "proxmox" {
  pm_api_url = "${var.pve_url}"
  pm_api_token_id = "${var.pve_user}"
  pm_api_token_secret = "${var.pve_token}"
  pm_tls_insecure = true
}
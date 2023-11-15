# Create the Test VM
resource "proxmox_vm_qemu" "test-vm" {
  count = 1
  name = "test-vm"
  # vmid = let proxmox choose if not sepcified
  target_node = "${var.pve_node}"

  # Clone from specified template
  clone = "${var.pve_template}"

  # resources defnition
  cpu          = "kvm64"
  sockets      = 1
  cores        = 2
  memory       = 2048
  agent        = 1

  # Set the boot disk paramters
  bootdisk = "scsi0"
  scsihw       = "virtio-scsi-pci"

  disk {
    size            = "32G"
    type            = "virtio"
    storage    = "local-lvm"
  }

  # Set the network
  network {
    model = "virtio"
    bridge = "vmbr2"
    tag = 100
  }

  # Ignore changes to the network
  ## MAC address is generated on every apply, causing
  ## TF to think this needs to be rebuilt on every apply
  lifecycle {
    ignore_changes = [
      network
    ]
  }

  # Cloud init options
  os_type = "cloud-init"
  ipconfig0 = "ip=192.168.100.112/24,gw=192.168.100.254"
}

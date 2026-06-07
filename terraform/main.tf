provider "virtualbox" {}

resource "virtualbox_vm" "ubuntu" {
  name      = "ubuntu-devops"
  image     = "ubuntu-22.04-server.iso" # Puedes usar una plantilla OVA si prefieres
  cpus      = 2
  memory    = "2048 mib"

  network_adapter {
    type           = "nat"
    host_interface = "eth0"
  }
}

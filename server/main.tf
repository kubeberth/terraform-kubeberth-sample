terraform {
  required_providers {
    kubeberth = {
      source  = "local/kubeberth/kubeberth"
      version = "0.12.0"
    }
  }
  required_version = "~> 1.2.0"
}

provider "kubeberth" {
  url = "http://api.kubeberth.k8s.arpa/api/v1alpha1/"
}

resource "kubeberth_server" "terraform-sample" {
  name        = "terraform-sample"
  running     = true
  cpu         = 2
  memory      = "2Gi"
  mac_address = "52:42:00:11:22:33"
  hostname    = "terraform-sample-server"
  #hosting     = "node-1.k8s.home.arpa"
  disks        = [
    { name = "terraform-sample" },
    { name = "terraform-sample-emptydisk" },
  ]
  cloudinit   = {
    name = "terraform-sample"
  }
}

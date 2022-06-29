terraform {
  required_providers {
    kubeberth = {
      source  = "local/kubeberth/kubeberth"
      version = "0.8.0"
    }
  }
  required_version = "~> 1.2.0"
}

provider "kubeberth" {
  url = "http://api.kubeberth.k8s.arpa/api/v1alpha1/"
}

resource "kubeberth_disk" "terraform-example" {
  name   = "terraform-example"
  size   = "32Gi"
  source = {
    archive = "terraform-example"
  }
}

resource "kubeberth_disk" "terraform-example-emptydisk" {
  name   = "terraform-example-emptydisk"
  size   = "16Gi"
  source = {}
}

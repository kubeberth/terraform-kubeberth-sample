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

resource "kubeberth_disk" "terraform-sample" {
  name   = "terraform-sample"
  size   = "32Gi"
  source = {
    archive = "terraform-sample"
  }
}

resource "kubeberth_disk" "terraform-sample-emptydisk" {
  name   = "terraform-sample-emptydisk"
  size   = "16Gi"
  source = {}
}

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

resource "kubeberth_archive" "terraform-example" {
  name = "terraform-example"
  url  = "http://minio.home.arpa:9000/kubevirt/images/ubuntu-20.04-server-cloudimg-arm64.img"
}

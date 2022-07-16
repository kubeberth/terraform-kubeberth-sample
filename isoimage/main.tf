terraform {
  required_providers {
    kubeberth = {
      source  = "local/kubeberth/kubeberth"
      version = "0.13.0"
    }
  }
  required_version = "~> 1.2.0"
}

provider "kubeberth" {
  url = "http://api.kubeberth.k8s.arpa/api/v1alpha1/"
}

resource "kubeberth_isoimage" "terraform-sample" {
  name       = "terraform-sample"
  size       = "2Gi"

  # Public ISO Image Repository for amd
  #repository = "https://releases.ubuntu.com/20.04/ubuntu-20.04.4-live-server-amd64.iso"

  # Public ISO Image Repository for arm
  #repository = "https://cdimage.ubuntu.com/releases/20.04/release/ubuntu-20.04.4-live-server-arm64.iso"

  # Local ISO Image Repository for amd
  #repository = "http://minio.home.arpa:9000/kubeberth/images/ubuntu-20.04.4-live-server-amd64.iso"

  # Local ISO Image Repository for arm
  repository = "http://minio.home.arpa:9000/kubeberth/images/ubuntu-20.04.4-live-server-arm64.iso"

}

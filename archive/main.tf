terraform {
  required_providers {
    kubeberth = {
      source  = "local/kubeberth/kubeberth"
      version = "0.11.0"
    }
  }
  required_version = "~> 1.2.0"
}

provider "kubeberth" {
  url = "http://api.kubeberth.k8s.arpa/api/v1alpha1/"
}

resource "kubeberth_archive" "terraform-sample" {
  name       = "terraform-sample"

  # Public ISO Image Repository for amd64
  #repository =  "https://cloud-images.ubuntu.com/releases/focal/release/ubuntu-20.04-server-cloudimg-amd64.img"

  # Public ISO Image Repository for arm64
  #repository = "https://cloud-images.ubuntu.com/releases/focal/release/ubuntu-20.04-server-cloudimg-arm64.img"

  # Local ISO Image Repository for amd64
  #repository = "http://minio.home.arpa:9000/kubeberth/images/ubuntu-20.04-server-cloudimg-amd64.img"

  # Local ISO Image Repository for arm64
  repository =  "http://minio.home.arpa:9000/kubeberth/images/ubuntu-20.04-server-cloudimg-arm64.img"

}

terraform {
  required_providers {
    kubeberth = {
      source  = "local/kubeberth/kubeberth"
      version = "0.10.0"
    }
  }
  required_version = "~> 1.2.0"
}

provider "kubeberth" {
  url = "http://api.kubeberth.k8s.arpa/api/v1alpha1/"
}

resource "kubeberth_loadbalancer" "terraform-sample" {
  name    = "terraform-sample"
  backends = [
    { server: "terraform-sample" },
  ]
  ports   = [
    { 
      name: "http"
      protocol: "TCP"
      port: 80
      target_port: 80
    },
  ]
}

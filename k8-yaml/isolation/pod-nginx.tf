resource "kubernetes_pod" "nginx" {
  metadata {
    name = "nginx"

    labels = {
      env = "test"
    }
  }

  spec {
    container {
      name  = "nginx"
      image = "nginx"
    }

    node_selector = {
      app-type = "third-party"
    }
  }
}


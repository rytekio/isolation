resource "kubernetes_deployment" "nginx" {
  metadata {
    name      = "nginx"
    namespace = "bar"

    labels = {
      run = "nginx"
    }
  }

  spec {
    replicas = 1

    selector {
      match_labels = {
        run = "nginx"
      }
    }

    template {
      metadata {
        labels = {
          run = "nginx"
        }
      }

      spec {
        container {
          name  = "nginx"
          image = "nginx"

          port {
            container_port = 80
            protocol       = "TCP"
          }

          image_pull_policy = "Always"
        }
      }
    }
  }
}


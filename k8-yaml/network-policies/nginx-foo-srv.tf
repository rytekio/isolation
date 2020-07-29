resource "kubernetes_service" "nginx" {
  metadata {
    name      = "nginx"
    namespace = "foo"

    labels = {
      run = "nginx"
    }
  }

  spec {
    port {
      protocol    = "TCP"
      port        = 80
      target_port = "80"
    }

    selector = {
      run = "nginx"
    }

    type             = "NodePort"
    session_affinity = "None"
  }
}


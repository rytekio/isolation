resource "kubernetes_namespace" "bar" {
  metadata {
    name = "bar"

    labels = {
      name = "bar"
    }
  }
}


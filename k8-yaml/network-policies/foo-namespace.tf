resource "kubernetes_namespace" "foo" {
  metadata {
    name = "foo"

    labels = {
      name = "foo"
    }
  }
}


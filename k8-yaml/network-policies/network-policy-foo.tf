resource "kubernetes_network_policy" "deny_from_other_namespaces" {
  metadata {
    name      = "deny-from-other-namespaces"
    namespace = "foo"
  }

  spec {
    pod_selector {}

    ingress {}
  }
}


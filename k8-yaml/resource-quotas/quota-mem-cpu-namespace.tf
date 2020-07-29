resource "kubernetes_namespace" "quota_mem_cpu" {
  metadata {
    name = "quota-mem-cpu"

    labels = {
      name = "quota-mem-cpu"
    }
  }
}


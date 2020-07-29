resource "kubernetes_resource_quota" "mem_cpu_demo" {
  metadata {
    name      = "mem-cpu-demo"
    namespace = "quota-mem-cpu"
  }

  spec {
    hard = {
      "limits.cpu" = "2"

      "limits.memory" = "2Gi"

      "requests.cpu" = "1"

      "requests.memory" = "1Gi"
    }
  }
}


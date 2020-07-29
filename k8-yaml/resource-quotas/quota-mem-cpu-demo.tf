resource "kubernetes_pod" "quota_mem_cpu_demo" {
  metadata {
    name      = "quota-mem-cpu-demo"
    namespace = "quota-mem-cpu"
  }

  spec {
    container {
      name  = "quota-mem-cpu-demo-ctr"
      image = "nginx"

      resources {
        limits {
          cpu    = "800m"
          memory = "800Mi"
        }

        requests {
          cpu    = "400m"
          memory = "600Mi"
        }
      }
    }
  }
}


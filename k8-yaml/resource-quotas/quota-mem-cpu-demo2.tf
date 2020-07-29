resource "kubernetes_pod" "quota_mem_cpu_demo_2" {
  metadata {
    name      = "quota-mem-cpu-demo-2"
    namespace = "quota-mem-cpu"
  }

  spec {
    container {
      name  = "quota-mem-cpu-demo-2-ctr"
      image = "redis"

      resources {
        limits {
          cpu    = "800m"
          memory = "1Gi"
        }

        requests {
          cpu    = "400m"
          memory = "700Mi"
        }
      }
    }
  }
}


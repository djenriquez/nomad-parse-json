job "hello-world" {
  datacenters = ["dc1"]

  group "hello-world" {
    task "hello-world" {
      driver = "docker"
      config {
        image = "dockercloud/hello-world:latest"
        port_map = {
            http = 80
        }
      }

      service {
        name = "hello-world"

        port = "http"

        check {
          type     = "tcp"
          port     = "http"
          interval = "10s"
          timeout  = "2s"
        }
      }

      resources {
        network {
          mbits = 10
          port "http" {}
        }
      }
    }
  }
}

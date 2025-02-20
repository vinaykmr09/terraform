terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

provider "docker" {
  host = "npipe:////./pipe/docker_engine"  # Docker daemon connection on Windows
}

resource "docker_image" "web-image" {
  name = "nginx:latest"
}

resource "docker_container" "test-container" {
  image = docker_image.nginx.name
  name  = "my-nginx-container"

  ports {
    internal = 80
    external = 8080
  }
}

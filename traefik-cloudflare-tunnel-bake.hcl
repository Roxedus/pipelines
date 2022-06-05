target "docker-metadata-action" {}

group "default" {
  targets = ["image-local"]
}

target "image" {
  inherits = ["docker-metadata-action"]
}

target "all" {
  inherits = ["image"]
  dockerfile = "traefik-cloudflare-tunnel/Dockerfile"
  platforms = [
    "linux/amd64",
    "linux/arm64",
    "linux/arm/v7"
  ]
}
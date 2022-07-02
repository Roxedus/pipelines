target "docker-metadata-action" {}

group "default" {
  targets = ["image-local"]
}

target "image" {
  inherits = ["docker-metadata-action"]
  context = "https://github.com/cloudflare/cloudflared.git#2022.6.1"
}

target "all" {
  inherits = ["image"]
  platforms = [
    #"linux/amd64",
    "linux/arm64",
    #"linux/arm/v7"
  ]
}
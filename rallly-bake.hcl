target "docker-metadata-action" {}

group "default" {
  targets = ["image"]
}

target "image" {
  inherits = ["docker-metadata-action"]
  context = "https://github.com/lukevella/rallly.git#v3.11.1"
  dockerfile = "./apps/web/Dockerfile"
  args = {
    APP_VERSION = "v3.11.1"
    SELF_HOSTED = "true"
  }
}

target "all" {
  inherits = ["image"]
  platforms = [
    "linux/amd64",
    "linux/arm64",
  ]
}
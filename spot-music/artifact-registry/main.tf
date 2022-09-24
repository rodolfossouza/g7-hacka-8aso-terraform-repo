resource "google_artifact_registry_repository" "g7-hacka-repo-front" {
  location = "us-central1"
  repository_id = var.registry_name["front-registry-name"]
  description = "Imagens do docker do front"
  format = "DOCKER"
}

resource "google_artifact_registry_repository" "g7-hacka-repo" {
  location = "us-central1"
  repository_id = var.registry_name["back-registry-name"]
  description = "Imagens Docker do back"
  format = "DOCKER"
}
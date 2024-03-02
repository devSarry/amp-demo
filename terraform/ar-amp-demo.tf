resource "google_artifact_registry_repository" "ar_amp_demo" {
  location      = "europe-north1"
  repository_id = "amp-demo"
  project       = module.host_project_artifacts.project_id
  description   = "Container image repository for amp-demo"
  format        = "DOCKER"

  docker_config {
    immutable_tags = true
  }
}

resource "google_cloudbuild_trigger" "terraform-pluto" {
  name = "terraform-pluto"
  description = "Terraform infrastructure trigger"
  filename = "cloudbuild.yaml"
  github {
    push {
      branch = "^main$"
    }
  }
}

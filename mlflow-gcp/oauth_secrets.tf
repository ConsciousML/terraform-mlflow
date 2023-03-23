resource "google_secret_manager_secret" "oauth_client_id" {
  secret_id = "oauth_client_id"

  labels = {
    label = "oauth"
  }

  replication {
    user_managed {
      replicas {
        location = var.zone
      }
    }
  }
}

resource "google_secret_manager_secret_version" "oauth_client_id" {
  secret      = google_secret_manager_secret.oauth_client_id.id
  secret_data = var.oauth_client_id_value
}


resource "google_secret_manager_secret" "oauth_client_secret" {
  secret_id = "oauth_client_secret"

  labels = {
    label = "oauth"
  }

  replication {
    user_managed {
      replicas {
        location = var.zone
      }
    }
  }
}

resource "google_secret_manager_secret_version" "oauth_client_secret" {
  secret      = google_secret_manager_secret.oauth_client_secret.id
  secret_data = var.oauth_client_secret_value
}
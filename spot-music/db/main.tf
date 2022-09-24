### Cria o DB MYsQL conectado a VPC

resource "google_sql_database_instance" "main" {
  name             = var.db_name
  database_version = "MYSQL_8_0"
  region           = var.region

  settings {
#    tier = "db-f1-micro"
    tier = var.db_tier
    activation_policy = "ALWAYS"
    ip_configuration {
      ipv4_enabled    = false
      private_network = var.private_network_id
    }


  }
}

# cria o usuário do banco
resource "google_sql_user" "users" {
  name     = var.db_user
  instance = google_sql_database_instance.main.name
  password = var.db_password
}

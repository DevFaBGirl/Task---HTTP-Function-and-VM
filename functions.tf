resource "google_cloudfunctions_function" "bellhooks_function" {
  name        = "bellhooksHttpFunction"
  description = "Função HTTP simples para retornar uma mensagem HTML"
  runtime     = "nodejs20"  

  entry_point = "bellhooksHttp"  
  trigger_http = true

  source_archive_bucket = google_storage_bucket.function_bucket.name
  source_archive_object = google_storage_bucket_object.function_archive.name

  available_memory_mb   = 128
  timeout               = 60
}

# BUCKET DE ARMANEZAMENTO
resource "google_storage_bucket_object" "function_archive" {
  name   = "function-source.zip"
  bucket = google_storage_bucket.function_bucket.name
  source = "path/to/your/function-source.zip" 
}

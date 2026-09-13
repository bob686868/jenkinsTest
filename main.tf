terraform {
  required_version = ">= 1.0.0"
}

# Creates a text file on the machine running the build
resource "local_file" "hello_world" {
  filename = "${path.module}/hello.txt"
  content  = "Hello World from Terraform inside Jenkins!"
}

# Output message to terminal logs
output "status_message" {
  value = "Terraform run completed successfully!"
}
output "URL" {
  value       = "https://portal.skillscloud.company"
  description = "Main portal address"
  depends_on  = []
}

output "learn_user" {
  value       = data.external.user.result.login
  description = "Main User"
  depends_on  = []
}

output "learn_password" {
  value       = data.external.user.result.password
  description = "Main Password"
  sensitive = false
  depends_on  = []
}
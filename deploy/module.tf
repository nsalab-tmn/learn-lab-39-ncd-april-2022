module "ncd" {
  source = "./ncd"
  count = 1
}

output "URL" {
  value =  module.ncd[0].URL 
  description = "Main portal address"
}

output "learn_password" {
  value =  module.ncd[0].learn_password 
  description = "Main Password"  
}

output "learn_user" {
  value =  module.ncd[0].learn_user 
  description = "Main User"
}
/*
resource "rustack_vm" "ubuntu20" {
    vdc_id = resource.rustack_vdc.vdc.id

    name = "DEV-VM"
    cpu = 2
    ram = 4

    template_id = data.rustack_template.ubuntu20.id

    user_data = templatefile("${path.module}/user_data.tpl", { 
        admin_pass  = data.external.user.result.password, 
        s3_access_key   = var.s3_access_key,
        s3_secret_key   = var.s3_secret_key, 
        s3_bucket_images= var.s3_bucket_images,
        s3_endpoint     = var.s3_endpoint 
        }
    )

    system_disk {
        size = 10
        storage_profile_id = data.rustack_storage_profile.ssd.id
    }

    port {
        network_id = data.rustack_network.service_network.id
        firewall_templates = [
            data.rustack_firewall_template.allow_default.id
        ]
    }

    floating = false
    depends_on = [
        resource.rustack_router.default_router,
    ]
}

*/

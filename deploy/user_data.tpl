#cloud-config
debug:
  verbose: true
cloud_init_modules:
 - migrator
 - seed_random
 - write-files
 - growpart
 - resizefs
 - set_hostname
 - update_hostname
 - update_etc_hosts
 - users-groups
 - ssh
 - runcmd
 - write_files
chpasswd:
  list: |
    root:P@ssw0rd
  expire: false
write_files:
- path: /opt/get-images.sh
  content: |
    #!/bin/bash

    apt-get -y update
    DEBIAN_FRONTEND=noninteractive apt-get -y install awscli
    aws configure set region "EU" --profile default
    aws configure set aws_access_key_id ${s3_access_key} --profile default
    aws configure set aws_secret_access_key ${s3_secret_key} --profile default
    mkdir -p /opt/unetlab/addons/qemu
    aws s3 sync --endpoint-url ${s3_endpoint} s3://${s3_bucket_images} /opt/unetlab/addons/qemu/
    DEBIAN_FRONTEND=noninteractive apt-get -y purge awscli
    
  owner: root:root
  permissions: '0644'

runcmd:
- bash /opt/get-images.sh
- rm /opt/get-images.sh
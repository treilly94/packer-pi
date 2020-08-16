# Packer-pi

This project is to build some raspberry pi images using packer.  
It will require the (packer-builder-arm plugin)[https://github.com/mkaczanowski/packer-builder-arm]

## Config
### Ansible
The images are provisioned using ansible.

It requires the ansible vault password to be supplied in 
`ansible/.vault_pass.txt`

### Manual config
After flashing the image onto a sd card you may want to make some of the below 
changes manually before starting the vm. most can be done by mounting the sd 
card and changing the files directly.  
There may also be some image specific config. This will be outlined in the 
images section below.

#### Hostname
I usually change the hostname of each vm by editing `/etc/hostname`.
This is used both for finding the device on the network and also for the 
metrics collected by telegraf.

## Images
### raspbain
This is a generic image based on raspbain. It'll probably evolve into
something more specific later.

### raspbain-camera
This image is used to stream video to youtube.  

#### Streaming config
There is a file called `/root/streaming.config`  
This is blank by default. You should add your youtube stream key.
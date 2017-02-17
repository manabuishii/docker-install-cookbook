# docker version
default[:docker_install][:docker][:distribution]="ubuntu-xenial"
default[:docker_install][:docker][:version]='1.11.1'
default[:docker_install][:docker][:setup_group]=true
default[:docker_install][:docker][:members]='vagrant'

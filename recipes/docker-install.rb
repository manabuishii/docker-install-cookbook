bash "apt-get update" do
  code   "apt-get update"
  action :nothing
  notifies :create, "docker_installation_package[default]"
end

docker_installation_package 'default' do
  version node[:docker_install][:docker][:version]
  #action :create
  action :nothing
  package_options %q|--force-yes -o Dpkg::Options::='--force-confold' -o Dpkg::Options::='--force-all'| # if Ubuntu for example
  notifies :modify, "group[docker]"
end

group 'docker' do
  action :nothing
  members node[:docker_install][:docker][:members]
  append true
  only_if { node[:docker_install][:docker][:setup_group] }
end

docker_service 'default' do
  action [:create, :start]
end


node[:docker_install][:docker][:images].each do |dockerimage|

docker_image "#{dockerimage[:name]}" do
  tag dockerimage[:tag]
  action :pull
end

end

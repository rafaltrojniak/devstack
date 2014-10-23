include_recipe 'yum-epel'

include_recipe 'php-fpm'

php_fpm_pool 'main' do
  template 'main-pool.conf.erb'
  cookbook 'devstack'
  enable true
end

include_recipe 'nginx'

directory '/var/www' do
  action :create
end

link node['devstack']['docroot'] do
  to '/vagrant/docroot'
end

file 'etc/nginx/conf.d/default.conf' do
  action :delete
end

template "#{node['nginx']['dir']}/sites-available/main" do
  source 'nginx_vhost.erb'
  notifies :reload, 'service[nginx]', :immediately
end

nginx_site 'main' do
  enable true
end

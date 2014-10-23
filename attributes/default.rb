default['php-fpm']['skip_repository_install'] = true
default['nginx']['default_site_enabled'] = false
default['devstack']['docroot'] = '/var/www/main'
default['php-fpm']['listen_owner']  = 'nginx'
default['php-fpm']['listen_group']  = 'nginx'
node.set['mysql']['server_root_password'] = ''
default['mysql']['allow_remote_root'] = true

# Short description

## HTTP
* Nginx uses php-fpm to interpret and serve content.
* Nginx public port (80) is mapped to host port 1080
* documentroot is set to docroot directory inside vagrant root directory

## MYSQL
* Mysql server listen on 3306 port, and this is mapped to 3306 port of the host
* Mysql root account has empty password
* PHPMyAdmin is available on host system on port 1081

## Quick-links
* Application: http://127.0.0.1:1080/
* PHPMyAdmin http://127.0.0.1:1081/

# Quick-start
* Clone my repository

  ````
  $ git clone https://github.com/rafaltrojniak/devstack.git; cd devstack/
  ````

* Create virtual machine, and provision it with vagrant (this can take a while)

  ````
  $ vagrant up
  ````

* go into document root and edit some file

  ````
  $ cd docroot ; vim index.php
  ````

* Open file in a browser http://127.0.0.1:1080/index.php
* Continue development

* After you will finish your work, but don't want to drop environment

  ````
  $ vagrant halt
  ````

* When you will finish development on project, will broken database/nginx or some other part of environment,

  ````
  $ vagrant destroy
  ````

# Dependencies
* Vagrant
* vagrant-berkshelf plugin

  ````
  $ vagrant plugin install vagrant-berkshelf --plugin-version 2.0.1
  ````

* vagrant-omnibus plugin

  ````
  $ vagrant plugin install vagrant-omnibus
  ````

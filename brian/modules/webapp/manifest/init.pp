class webapp (

  $docroot = $webapp::params::docroot,

) inherits webapp::params {
  include apache
  include apache::mod_php
  include mysql::server
  include mysql::bindings
  include mysql::bindings::php

  apache::vhost { $::fqdn:
    priority   => '10',
    vhost_name => $::fqdn,
    port       => '80',
    docroot    => $docroot,
  }

}

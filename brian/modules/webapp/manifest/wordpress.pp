class webapp::wordpress {
  include webapp

  class { '::wordpress':
    install_dir => $webapp::docroot,
    require     => Apache::Vhost[$::fqdn],
  }

}

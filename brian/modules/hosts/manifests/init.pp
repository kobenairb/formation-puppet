class hosts {

  host { 'localhost':
    ensure       => 'present',
    host_aliases => ['localhost'],
    ip           => '127.0.0.1',
  }
  host { 'master.puppetlabs.vm':
    ensure       => 'present',
    host_aliases => ['master'],
    ip           => '192.168.20.19',
  }

  @@host { $::fqdn:
    ensure       => present,
    host_aliases => [$::fqdn],
    ip           => $::ipaddress,
    tag          => 'classroom'
  }

 Host <| tag == 'classroom' |>

}

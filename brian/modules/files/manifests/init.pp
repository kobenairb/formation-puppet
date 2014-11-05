class files {

  file {'/etc/cron.allow':
        ensure => present
  }

  file_line {'cron.allow':
    ensure => present,
    path   => '/etc/cron.allow',
    line   => 'root'
  }

  file_line {'cron.deny':
    ensure => present,
    path => '/etc/cron.deny',
    line => '*'
  }

  concat {'/etc/motd':
    owner => 'root',
    group => 'root',
    mode  => '0644'
  }

  concat::fragment {'header':
    target  => '/etc/motd',
    order   => '01',
    content => 'Touche a ton cul, ici c\'est puppet !!!'
  }

  concat::fragment {'line':
    target    => '/etc/motd',
    order   => '99',
    content => 'Too shy shy hush hush eye to eye ...'
  }

}

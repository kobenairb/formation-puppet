class review (
 
  $user = undef

) {

file {'/etc/shells':
  ensure => present,
  source => 'puppet:///modules/review/shells'

}

file {'/etc/motd':
  ensure  => present,
  content => template('review/motd.erb')
}


user {"$user":
  ensure => present
}

}

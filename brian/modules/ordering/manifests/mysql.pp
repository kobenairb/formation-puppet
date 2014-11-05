class ordering::mysql {

  anchor {'orgering::mysql::begin': }
  ->
  class { 'mysql::server':
    root_password => 'strongpassword',
  }
  ->
  anchor {'ordering::mysql::end': }

  contain mysql::bindings
  contain mysql::bindings::perl
  contain mysql::bindings::php

}

class ordering {

  stage {'post-run':
    require => Stage['main']
  }

  include ordering::epel
  include ordering::mysql

 notify {'this should come after entite MySQL class .....':
   require => Class['ordering::mysql']
 }

 class {'ordering::updatedb':
   stage => 'post-run'
 }

}

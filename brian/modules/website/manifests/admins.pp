class website::admins {

  include system::admins

  User <| tag == 'wordpress' |>

} 

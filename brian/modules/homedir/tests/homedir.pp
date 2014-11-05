$roothome = homedir('root')
$testhome = homedir('test')

notify { "Root's home dir is ${roothome}": }
notify { "Test's home dir is ${testhome}": }


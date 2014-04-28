#salt_key_add

file { "/tmp/key.txt":
  ensure => present
}

exec { "download key": 
  command => "wget -q -O- \"http://keyserver.ubuntu.com:11371/pks/lookup?op=get&search=0x4759FA960E27C0A6\"  >> /tmp/key.txt",
  path    => "/usr/bin",
}

exec { "add key":
  command => "sudo apt-key add /tmp/key.txt",
  path    => "/usr/bin",
  require => File['/tmp/key.txt'],
}

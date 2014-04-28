file { "/etc/apt/sources.list.d/saltstack.list":
      ensure  => present,
      source  => "puppet:///modules/salt/saltstack.list"
}

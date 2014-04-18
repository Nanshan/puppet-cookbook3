node 'precise64'{
    include puppet
    file { '/tmp/hello':
      content => "Hello World 3\n",
    }
}


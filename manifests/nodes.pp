node 'precise64'{
    include puppet
    file { '/tmp/hello':
           content => "Hello  kidding World\n",
     }
}


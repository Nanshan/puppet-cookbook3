node 'precise64'{
    include puppet
    file { '/tmp/hello':
           content => "HelloWOrl\n",
     }
}


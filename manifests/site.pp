node default {
  file {'/root/README':
   ensure  => file,
   content => 'This is README file of control repo',
   owner   => 'root',
   mode    => '0644',
  }
  file {'/root/README':
   owner   => 'root',  
  }
}

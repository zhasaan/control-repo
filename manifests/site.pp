node default {
  file {'/root/README':
   ensure  => file,
   content => 'This is README file',
   owner   => 'root',
   mode    => '0644',
  }
}

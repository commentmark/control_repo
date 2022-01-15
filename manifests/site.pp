node::default {
  file { '/root/READ.me':
    ensure => file,
    content => 'This is a readme',
    owner => 'root',
  }
}
nod::master.puppet.vm {
  include role::master_server
}

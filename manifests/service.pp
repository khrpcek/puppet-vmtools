class vmwaretools::service {
  case $::operatingsystemmajrelease {
    5: {
      service { 'vmware-tools':
        name   => 'vmware-tools',
        ensure => 'running',
        enable => 'true',
      }
    }
    6: {
      service { 'vmware-tools-services':
        name   => 'vmware-tools',
        ensure => 'running',
        enable => 'true',
      }
    }
    7: {
      service { 'vmtoolsd':
        name   => 'vmtoolsd',
        ensure => 'running',
        enable => 'true',
      }
    }
  }
}

class vmwaretools::install {
  case $::operatingsystemmajrelease {
    5,6: {
      if $::gnome_installed == 'true' {
        
        package {'vmware-tools-esx':
          name => 'vmware-tools-esx',
          ensure => 'present',
        }
      }
      elsif $::gnome_installed == 'false' {
        package {'vmware-tools-esx-nox':
          name => 'vmware-tools-esx-nox',
          ensure => 'present',
        }
      }
    }
    7: {
      package {'open-vm-tools':
        name => 'open-vm-tools',
        ensure => 'present',
      }
    }
  }
}

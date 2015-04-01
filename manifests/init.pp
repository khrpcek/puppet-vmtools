class vmwaretools {
  case $::osfamily {
    'RedHat': {
      if $::virtual == 'vmware' {
        include vmwaretools::install
      }
      else {
        include vmwaretools::unistall
      }
    }
  }
}

class installation::params {

  case $facts['os']['family'] {
    'RedHat': {
      $package_name = 'git'
      $os_name = $facts['os']['family']
    }
    'debian': {
      $package_name = 'CybereasonSensor64_19_0_91_0_partnersandbox_partnersandbox-r.cybereason.net_443_ACTIVE_NORMAL.deb'
      $os_name = $facts['os']['family']
    }
    'windows': {
      $package_name = 'CybereasonSensor64_19_0_91_0_partnersandbox_partnersandbox-r.cybereason.net_443_ACTIVE_NORMAL.msi'
      $os_name = $facts['os']['family']
    }
    default: {
      fail("The operatng system ${facts['os']['family']} is not supported by this module")
    }
  }

}
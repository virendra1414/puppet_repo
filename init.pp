class installation (
  $package_name      = $installation::params::package_name,
  $os_name = $installation::params::deploy_server_port
) inherits installation::params {

  package { 'git': name => ${package_name} source => ensure => 'installed' }

  notify{"The value of package_name is: ${package_name}": }
  notify{"The value of os_name is: ${os_name}": }
  
}
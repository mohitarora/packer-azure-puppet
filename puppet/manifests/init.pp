if $::kernel == windows {
  # default package provider
  Package { provider => chocolatey }
}

if $osfamily == 'windows' {
  File { source_permissions => ignore }
}

class { 'common': }
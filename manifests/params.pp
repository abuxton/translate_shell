# == Class translate_shell::params
#
# This class is meant to be called from translate_shell.
# It sets variables according to platform.
#
class translate_shell::params {
  case $::osfamily {
    'RedHat'{
      $package_name = 'trans'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}

# == Class translate_shell::params
#
# This class is meant to be called from translate_shell.
# It sets variables according to platform.
#
class translate_shell::params {
  case $::osfamily {
    'RedHat', 'Darwin': {
      $package_name =  'trans'
      $userlocalbin =  '/usr/local/bin'
      $source       =  'https://git.io/trans'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}

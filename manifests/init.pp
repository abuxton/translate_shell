# Class: translate_shell
# ===========================
#
# Full description of class translate_shell here.
#
# Parameters
# ----------
#
# * `sample parameter`
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
class translate_shell (
  $package_name = $::translate_shell::params::package_name,
  $bin_dir = $::translate_shell::userlocalbin,
) inherits ::translate_shell::params {

  # validate parameters here

  class { '::translate_shell::install': }
  -> Class['::translate_shell']
}

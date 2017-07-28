# == Class translate_shell::install
#
# This class is called from translate_shell for install.
#
class translate_shell::install() {
  file{"${translate_shell::bin_dir}/trans":
    ensure  => file,
    owner   => 0,
    group   => 0,
    mode    => '0755',
    source  => 'https://git.io/trans',
    replace => false,
  }

}

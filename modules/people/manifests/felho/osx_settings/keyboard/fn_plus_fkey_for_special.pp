class people::felho::osx_settings::keyboard::fn_plus_fkey_for_special {
  boxen::osx_defaults { 'fn + fkey for special behavior, not fkey alone':
    user   => $::luser,
    domain => 'NSGlobalDomain',
    key    => 'com.apple.keyboard.fnState',
    type   => 'bool',
    value  => true,
  }
}
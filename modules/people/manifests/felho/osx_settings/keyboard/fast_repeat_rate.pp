class people::felho::osx_settings::keyboard::fast_repeat_rate(
  $initial_key_repeat = 12,
  $key_repeat         = 2
) {
  boxen::osx_defaults { 'Set fast keyboard repeat rate: InitialKeyRepeat':
    user   => $::luser,
    domain => 'NSGlobalDomain',
    key    => 'InitialKeyRepeat',
    type   => 'int',
    value  => $initial_key_repeat,
  }

  boxen::osx_defaults { 'Set fast keyboard repeat rate: KeyRepeat':
    user   => $::luser,
    domain => 'NSGlobalDomain',
    key    => 'KeyRepeat',
    type   => 'int',
    value  => $key_repeat,
  }
}
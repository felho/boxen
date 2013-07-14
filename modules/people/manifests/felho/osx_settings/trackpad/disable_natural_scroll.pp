class people::felho::osx_settings::trackpad::disable_natural_scroll {
  boxen::osx_defaults { 'Disable natural (touchscreen-style) scrolling':
    user   => $::luser,
    domain => 'NSGlobalDomain',
    key    => 'com.apple.swipescrolldirection',
    type   => 'bool',
    value  => false,
  }
}
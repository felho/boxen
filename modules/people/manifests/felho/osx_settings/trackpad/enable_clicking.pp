class people::felho::osx_settings::trackpad::enable_clicking($dragging = false) {
  boxen::osx_defaults { 'Enable tap to click on a Magic Trackpad':
    user   => $::luser,
    domain => 'com.apple.driver.AppleBluetoothMultitouch.trackpad',
    key    => 'Clicking',
    type   => 'bool',
    value  => true,
  }

  if $dragging == true {
    boxen::osx_defaults { 'Enable dragging on a Magic Trackpad':
      user   => $::luser,
      domain => 'com.apple.driver.AppleBluetoothMultitouch.trackpad',
      key    => 'Dragging',
      type   => 'bool',
      value  => true,
    }
  }

  $tapBehavior = $dragging ? {
    true    => 2,
    default => 1
  }

  boxen::osx_defaults { 'Enable tap to click for the active user':
    user   => $::luser,
    host   => 'currentHost',
    domain => 'NSGlobalDomain',
    key    => 'com.apple.mouse.tapBehavior',
    type   => 'int',
    value  => $tapBehavior,
  }

  boxen::osx_defaults { 'Enable tap to click on the login screen':
    user   => $::luser,
    domain => 'NSGlobalDomain',
    key    => 'com.apple.mouse.tapBehavior',
    type   => 'int',
    value  => $tapBehavior,
  }
}
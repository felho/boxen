class people::felho::osx_settings::appstore {
  boxen::osx_defaults { 'Enable the WebKit Developer Tools in the Mac App Store':
    user   => $::luser,
    domain => 'com.apple.appstore',
    key    => 'WebKitDeveloperExtras',
    type   => 'bool',
    value  => true,
  }

  boxen::osx_defaults { 'Enable Debug Menu in the Mac App Store':
    user   => $::luser,
    domain => 'com.apple.appstore',
    key    => 'ShowDebugMenu',
    type   => 'bool',
    value  => false,
  }
}
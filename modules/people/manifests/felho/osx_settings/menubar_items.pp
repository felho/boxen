class people::felho::osx_settings::menubar_items {
  boxen::osx_defaults { 'Reset menubar items':
    user   => $::luser,
    domain => 'com.apple.systemuiserver',
    key    => 'menuExtras',
    type   => 'array',
    value  => [],
  }
  ->
  people::felho::plistbuddy { 'Show time machine menu in menubar':
    domain   => 'com.apple.systemuiserver',
    property => 'menuExtras:0',
    type     => 'string',
    value    => '/System/Library/CoreServices/Menu Extras/TimeMachine.menu',
  }
  ->
  people::felho::plistbuddy { 'Show bluetooth menu in menubar':
    domain   => 'com.apple.systemuiserver',
    property => 'menuExtras:1',
    type     => 'string',
    value    => '/System/Library/CoreServices/Menu Extras/Bluetooth.menu',
  }
  ->
  people::felho::plistbuddy { 'Show airport menu in menubar':
    domain   => 'com.apple.systemuiserver',
    property => 'menuExtras:2',
    type     => 'string',
    value    => '/System/Library/CoreServices/Menu Extras/AirPort.menu',
  }
  ->
  people::felho::plistbuddy { 'Show volume menu in menubar':
    domain   => 'com.apple.systemuiserver',
    property => 'menuExtras:3',
    type     => 'string',
    value    => '/System/Library/CoreServices/Menu Extras/Volume.menu',
  }
  ->
  people::felho::plistbuddy { 'Show clock menu in menubar':
    domain   => 'com.apple.systemuiserver',
    property => 'menuExtras:4',
    type     => 'string',
    value    => '/System/Library/CoreServices/Menu Extras/Clock.menu',
  }
  ->
  people::felho::plistbuddy { 'Show text input menu in menubar':
    domain   => 'com.apple.systemuiserver',
    property => 'menuExtras:5',
    type     => 'string',
    value    => '/System/Library/CoreServices/Menu Extras/TextInput.menu',
  }
}
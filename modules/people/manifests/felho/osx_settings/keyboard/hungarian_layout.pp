class people::felho::osx_settings::keyboard::hungarian_layout {
  $plist = "ByHost/com.apple.HIToolbox.${::sp_platform_uuid}.plist"

  file { "/Users/${::luser}/Library/Keyboard Layouts/felho.icns":
    ensure  => 'link',
    target  => "/Users/${::luser}/Dropbox/config/felho.icns",
    force   => true,
    require => Package['Dropbox'],
  }
  ->
  file { "/Users/${::luser}/Library/Keyboard Layouts/felho.keylayout":
    ensure  => 'link',
    target  => "/Users/${::luser}/Dropbox/config/felho.keylayout",
    force   => true,
    require => Package['Dropbox'],
  }
  ->
  people::felho::plistbuddy { 'Enabling Hungarian PRO FB keyboard layout 1':
    plist    => $plist,
    property => 'AppleEnabledInputSources:2:InputSourceKind',
    type     => 'string',
    value    => 'Keyboard Layout',
  }
  ->
  people::felho::plistbuddy { 'Enabling Hungarian PRO FB keyboard layout 2':
    plist    => $plist,
    property => 'AppleEnabledInputSources:2:KeyboardLayout Name',
    type     => 'string',
    value    => 'Hungarian PRO FB',
  }
  ->
  people::felho::plistbuddy { 'Enabling Hungarian PRO FB keyboard layout 3':
    plist    => $plist,
    property => 'AppleEnabledInputSources:2:KeyboardLayout ID',
    type     => 'int',
    value    => -28675,
  }
  ->
  people::felho::plistbuddy { 'Show character palette in input menu 1':
    plist    => $plist,
    property => 'AppleEnabledInputSources:3:InputSourceKind',
    type     => 'string',
    value    => 'Non Keyboard Input Method',
  }
  ->
  people::felho::plistbuddy { 'Show character palette in input menu 2':
    plist    => $plist,
    property => 'AppleEnabledInputSources:3:Bundle ID',
    type     => 'string',
    value    => 'com.apple.CharacterPaletteIM',
  }
  ->
  people::felho::plistbuddy { 'Show keyboard viewer in input menu 1':
    plist    => $plist,
    property => 'AppleEnabledInputSources:4:InputSourceKind',
    type     => 'string',
    value    => 'Non Keyboard Input Method',
  }
  ->
  people::felho::plistbuddy { 'Show keyboard viewer in input menu 2':
    plist    => $plist,
    property => 'AppleEnabledInputSources:4:Bundle ID',
    type     => 'string',
    value    => 'com.apple.KeyboardViewer',
  }
}
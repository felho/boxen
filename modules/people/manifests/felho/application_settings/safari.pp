class people::felho::application_settings::safari {
  boxen::osx_defaults { 'Enable Safari\'s debug menu':
    user   => $::luser,
    domain => 'com.apple.Safari',
    key    => 'IncludeInternalDebugMenu',
    type   => 'bool',
    value  => true,
  }

  boxen::osx_defaults { 'Enable the Develop menu and the Web Inspector in Safari 1':
    user   => $::luser,
    domain => 'com.apple.Safari',
    key    => 'IncludeDevelopMenu',
    type   => 'bool',
    value  => true,
  }
  boxen::osx_defaults { 'Enable the Develop menu and the Web Inspector in Safari 2':
    user   => $::luser,
    domain => 'com.apple.Safari',
    key    => 'WebKitDeveloperExtrasEnabledPreferenceKey',
    type   => 'bool',
    value  => true,
  }
  boxen::osx_defaults { 'Enable the Develop menu and the Web Inspector in Safari 3':
    user   => $::luser,
    domain => 'com.apple.Safari',
    key    => 'com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled',
    type   => 'bool',
    value  => true,
  }

  boxen::osx_defaults { 'Add a context menu item for showing the Web Inspector in web views':
    user   => $::luser,
    domain => 'NSGlobalDomain',
    key    => 'WebKitDeveloperExtras',
    type   => 'bool',
    value  => true,
  }

  boxen::osx_defaults { 'Safari: show status bar':
    user   => $::luser,
    domain => 'com.apple.Safari',
    key    => 'ShowStatusBar',
    type   => 'bool',
    value  => true,
  }

  boxen::osx_defaults { 'Safari: always show tab bar':
    user   => $::luser,
    domain => 'com.apple.Safari',
    key    => 'AlwaysShowTabBar',
    type   => 'bool',
    value  => true,
  }

  boxen::osx_defaults { 'Set Safari\'s home page to \'about:blank\' for faster loading':
    user   => $::luser,
    domain => 'com.apple.Safari',
    key    => 'HomePage',
    type   => 'string',
    value  => 'about:blank',
  }

  boxen::osx_defaults { 'Always restore session after launch on Safari ':
    user   => $::luser,
    domain => 'com.apple.Safari',
    key    => 'AlwaysRestoreSessionAtLaunch',
    type   => 'bool',
    value  => true,
  }
}
class people::felho::application_settings::iterm2 {
  boxen::osx_defaults { 'Turn off prompt on quit':
    user   => $::luser,
    domain => 'com.googlecode.iterm2',
    key    => 'PromptOnQuit',
    type   => 'bool',
    value  => false,
  }

  boxen::osx_defaults { 'Turn off prompt on quit when more tabs are open':
    user   => $::luser,
    domain => 'com.googlecode.iterm2',
    key    => 'OnlyWhenMoreTabs',
    type   => 'bool',
    value  => false,
  }

  people::felho::plistbuddy { 'Left option key acts as Meta+Esc':
    domain   => 'com.googlecode.iterm2',
    property => 'New Bookmarks:0:Option Key Sends',
    type     => 'int',
    value    => 2,
  }

  people::felho::plistbuddy { 'Set the size of scrollback lines to zero':
    domain   => 'com.googlecode.iterm2',
    property => 'New Bookmarks:0:Scrollback Lines',
    type     => 'int',
    value    => 0,
  }

  people::felho::plistbuddy { 'Enable unlimited scrollback':
    domain   => 'com.googlecode.iterm2',
    property => 'New Bookmarks:0:Unlimited Scrollback',
    type     => 'bool',
    value    => true,
  }
}
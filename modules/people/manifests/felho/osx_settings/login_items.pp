class people::felho::osx_settings::login_items {
  osx_login_item { 'Dropbox':
     name => 'Dropbox',
     path => '/Applications/Dropbox.app',
     hidden => true,
     require => Package['Dropbox'],
  }

  osx_login_item { 'Divvy':
     name => 'Divvy',
     path => '/Applications/Divvy.app',
     hidden => true,
  }

  osx_login_item { 'Viscosity':
     name => 'Viscosity',
     path => '/Applications/Viscosity.app',
     hidden => true,
  }

  osx_login_item { 'Battery Time 2':
     name => 'Battery Time Remaining',
     path => '/Applications/Battery Time Remaining.app',
     hidden => true,
  }

  osx_login_item { 'BetterTouchTool':
     name => 'BetterTouchTool',
     path => '/Applications/BetterTouchTool.app',
     hidden => false,
  }
}
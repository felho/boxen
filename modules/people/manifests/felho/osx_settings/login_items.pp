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
}
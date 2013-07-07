class people::felho::application_settings::clipmenu {
  boxen::osx_defaults { 'Clipmenu maxHistorySize':
    user   => $::luser,
    domain => 'com.naotaka.ClipMenu',
    key    => 'maxHistorySize',
    value  => 300,
  }

  boxen::osx_defaults { 'Clipmenu numberOfItemsPlaceInline':
    user   => $::luser,
    domain => 'com.naotaka.ClipMenu',
    key    => 'numberOfItemsPlaceInline',
    value  => 20,
  }

  boxen::osx_defaults { 'Clipmenu numberOfItemsPlaceInsideFolder':
    user   => $::luser,
    domain => 'com.naotaka.ClipMenu',
    key    => 'numberOfItemsPlaceInsideFolder',
    value  => 20,
  }

  boxen::osx_defaults { 'Clipmenu maxMenuItemTitleLength':
    user   => $::luser,
    domain => 'com.naotaka.ClipMenu',
    key    => 'maxMenuItemTitleLength',
    value  => 25,
  }
}
class people::felho::applications {
  notify {'class people::felho::applications declared':}

  # Sublime
  include sublime_text_2
  sublime_text_2::package {'Emmet':
    source => 'sergeche/emmet-sublime'
  }

  # iTerm2
  include iterm2::stable

  # Chrome
  include chrome

  # Skype
  include skype
  file {"/Users/felho/Library/Application Support/Skype":
     ensure  => 'link',
     target  => "/Users/felho/Dropbox/Skype/",
     force   => true,
     require => [Package[Dropbox],Package[Skype]],
  }  

  # TeamViewer
  include teamviewer

  # Dropbox
  include dropbox

  # ClipMenu
  include clipmenu
  boxen::osx_defaults {'Clipmenu maxHistorySize':
    domain  => 'com.naotaka.ClipMenu',
    key   => 'maxHistorySize',
    value => 300,
  }  
  boxen::osx_defaults {'Clipmenu numberOfItemsPlaceInline':
    domain  => 'com.naotaka.ClipMenu',
    key   => 'numberOfItemsPlaceInline',
    value => 20,
  }  
  boxen::osx_defaults {'Clipmenu numberOfItemsPlaceInsideFolder':
    domain  => 'com.naotaka.ClipMenu',
    key   => 'numberOfItemsPlaceInsideFolder',
    value => 20,
  }  
  boxen::osx_defaults {'Clipmenu maxMenuItemTitleLength':
    domain  => 'com.naotaka.ClipMenu',
    key   => 'maxMenuItemTitleLength',
    value => 25,
  }

  # Transmission
  include transmission
  file {"/Users/felho/Library/Application Support/Transmission":
     ensure  => 'link',
     target  => "/Users/felho/Dropbox/appconfig/Transmission/",
     force   => true,
     require => [Package[Dropbox],Package[transmission]],
  }  

  # Dotfiles
  file {"/Users/felho/.profile":
     ensure  => 'link',
     target  => "/Users/felho/Dropbox/config/.profile",
     force   => true,
     require => Package[Dropbox],
  }  
  file {"/Users/felho/.alias":
     ensure  => 'link',
     target  => "/Users/felho/Dropbox/config/.alias",
     force   => true,
     require => Package[Dropbox],
  }  
  file {"/Users/felho/.bash_history":
     ensure  => 'link',
     target  => "/Users/felho/Dropbox/config/.bash_history",
     force   => true,
     require => Package[Dropbox],
  }  

  # Divvy
  boxen::osx_defaults {'Divvy useGlobalHotkey':
    domain  => 'com.mizage.Divvy',
    key   => 'useGlobalHotkey',
    value => 1,
  }

  package{ 'mc': }

  # Java
  include java

  # Firefox
  include firefox
}

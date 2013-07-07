class people::felho::dotfiles {
  file { "/Users/${::luser}/.profile":
    ensure  => 'link',
    target  => "/Users/${::luser}/Dropbox/config/.profile",
    force   => true,
    require => Package['Dropbox'],
  }

  file { "/Users/${::luser}/.alias":
     ensure  => 'link',
     target  => "/Users/${::luser}/Dropbox/config/.alias",
     force   => true,
     require => Package['Dropbox'],
  }

  file { "/Users/${::luser}/.bash_history":
     ensure  => 'link',
     target  => "/Users/${::luser}/Dropbox/config/.bash_history",
     force   => true,
     require => Package['Dropbox'],
  }
}
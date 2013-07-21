class people::felho::application_settings::itunes {
  boxen::osx_defaults { 'Disable playing songs when importing':
    user   => $::luser,
    domain => 'com.apple.iTunes',
    key    => 'play-songs-while-importing',
    type   => 'bool',
    value  => false,
  }
}
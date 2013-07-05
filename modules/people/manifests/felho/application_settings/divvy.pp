class people::felho::application_settings::divvy {
  boxen::osx_defaults {'Divvy useGlobalHotkey':
    domain  => 'com.mizage.Divvy',
    key   => 'useGlobalHotkey',
    value => 1,
  }
}
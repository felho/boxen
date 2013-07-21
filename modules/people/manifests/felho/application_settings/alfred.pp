class people::felho::application_settings::alfred {
  people::felho::plistbuddy { 'Setting Alfred\'s hotkey to Cmd-Space - key':
    domain   => 'com.runningwithcrayons.Alfred-Preferences',
    property => 'hotkey.default:key',
    type     => 'int',
    value    => 49,
  }

  people::felho::plistbuddy { 'Setting Alfred\'s hotkey to Cmd-Space - mod':
    domain   => 'com.runningwithcrayons.Alfred-Preferences',
    property => 'hotkey.default:mod',
    type     => 'int',
    value    => 1048576,
  }

  people::felho::plistbuddy { 'Setting Alfred\'s hotkey to Cmd-Space - string':
    domain   => 'com.runningwithcrayons.Alfred-Preferences',
    property => 'hotkey.default:string',
    type     => 'string',
    value    => 'Space',
  }
}
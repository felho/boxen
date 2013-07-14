class people::felho::osx_settings::keyboard::input_source_per_document {
  $plist = "ByHost/com.apple.HIToolbox.${::sp_platform_uuid}.plist"

  people::felho::plistbuddy { 'Allow different input source for each document':
    plist    => $plist,
    property => 'AppleGlobalTextInputProperties:TextInputGlobalPropertyPerContextInput',
    type     => 'int',
    value    => 1,
  }
}
define people::felho::plistbuddy(
  $plist           = undef,
  $domain          = undef,
  $property        = undef,
  $type            = 'string',
  $value           = undef,
  $preferences_dir = "/Users/${::luser}/Library/Preferences/",
  $buddy_path      = '/usr/libexec/PlistBuddy'
) {
  $plist_path = $domain ? {
    undef   => "${preferences_dir}${plist}",
    default => "${preferences_dir}${domain}.plist"
  }
  $cmd_type = $type ? {
    'int'   => 'integer',
    default => $type
  }

  exec { "Set ${plist_path}-${property}-${cmd_type}-${value}":
    command  => "$buddy_path -c \"Add :${property} ${cmd_type} ${value}\" ${plist_path}",
    provider => shell,
    onlyif   => "[[ `$buddy_path -c \"Print :${property}\" ${plist_path}` != ${value} ]] || exit 1",
  }
}
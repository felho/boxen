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

  exec { "Delete ${plist_path}-${property}":
    command  => "$buddy_path -c \"Delete \\\":${property}\\\"\" ${plist_path}",
    provider => shell,
    unless   => "$buddy_path -c \"Print \\\":${property}\\\"\" ${plist_path} 2>&1 | grep \"Does Not Exist\"",
  }

  exec { "Set ${plist_path}-${property}-${cmd_type}-${value}":
    command  => "$buddy_path -c \"Add \\\":${property}\\\" ${cmd_type} ${value}\" ${plist_path}",
    provider => shell,
    require  => Exec[ "Delete ${plist_path}-${property}" ],
  }
}
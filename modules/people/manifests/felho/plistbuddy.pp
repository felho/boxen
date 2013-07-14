define people::felho::plistbuddy(
  $plist           = undef,
  $property        = undef,
  $value           = undef,
  $preferences_dir = "/Users/${::luser}/Library/Preferences/",
  $buddy_path      = '/usr/libexec/PlistBuddy'
) {
  notify { "[[ `$buddy_path -c \"Print :${property}\" ${preferences_dir}${plist}` == ${value} ]] || exit 1": }

  exec { "${preferences_dir}${plist}-${property}-${value}":
    command  => "$buddy_path -c \"Set :${property} ${value}\" ${preferences_dir}${plist}",
    provider => shell,
    onlyif   => "[[ `$buddy_path -c \"Print :${property}\" ${preferences_dir}${plist}` != ${value} ]] || exit 1",
  }
}
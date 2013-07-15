class people::felho::osx_settings::computer_name {
  exec { 'Set computer name (as done via System Preferences → Sharing) 1':
    command => "scutil --set ComputerName \"${people::felho::computer_name}\"",
    user => 'root',
    require => Sudoers[ 'computer_name' ],
  }

  exec { 'Set computer name (as done via System Preferences → Sharing) 2':
    command => "scutil --set HostName \"${people::felho::computer_name}\"",
    user => 'root',
    require => Sudoers[ 'computer_name' ],
  }

  exec { 'Set computer name (as done via System Preferences → Sharing) 3':
    command => "scutil --set LocalHostName \"${people::felho::computer_name}\"",
    user => 'root',
    require => Sudoers[ 'computer_name' ],
  }

  exec { 'Set computer name (as done via System Preferences → Sharing) 4':
    command => "defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string \"${people::felho::computer_name}\"",
    user => 'root',
    require => Sudoers[ 'computer_name' ],
  }
}
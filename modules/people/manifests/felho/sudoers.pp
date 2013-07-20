class people::felho::sudoers {
  sudoers { 'tmutil':
    users    => $::boxen_user,
    hosts    => 'ALL',
    commands => [
      '(ALL) NOPASSWD : /usr/bin/tmutil disablelocal',
    ],
    type     => 'user_spec',
  }

  sudoers { 'assistive_devices':
    users    => $::boxen_user,
    hosts    => 'ALL',
    commands => [
      '(ALL) NOPASSWD : /usr/bin/touch /private/var/db/.AccessibilityAPIEnabled',
      '/bin/rm /private/var/db/.AccessibilityAPIEnabled',
    ],
    type     => 'user_spec',
  }

  sudoers { 'computer_name':
    users    => $::boxen_user,
    hosts    => 'ALL',
    commands => [
      "(ALL) NOPASSWD : /usr/sbin/scutil --set ComputerName \"${people::felho::computer_name}\"",
      "/usr/sbin/scutil --set HostName \"${people::felho::computer_name}\"",
      "/usr/sbin/scutil --set LocalHostName \"${people::felho::computer_name}\"",
      "/usr/bin/defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string \"${people::felho::computer_name}\"",
    ],
    type     => 'user_spec',
  }

  sudoers { 'boot_chime':
    users    => $::boxen_user,
    hosts    => 'ALL',
    commands => [
      '(ALL) NOPASSWD : /usr/sbin/nvram SystemAudioVolume=%80﻿',
      '/usr/sbin/nvram -d SystemAudioVolume',
    ],
    type     => 'user_spec',
  }
}
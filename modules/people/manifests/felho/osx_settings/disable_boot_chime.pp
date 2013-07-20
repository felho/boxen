class people::felho::osx_settings::disable_boot_chime {
  exec { 'Disable the boot chime':
    command => 'nvram SystemAudioVolume=%80﻿',
    user    => 'root',
    require => Sudoers[ 'boot_chime' ],
  }
}
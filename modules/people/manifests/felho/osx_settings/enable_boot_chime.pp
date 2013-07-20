class people::felho::osx_settings::enable_boot_chime {
  exec { 'Enable the boot chime':
    command => 'nvram -d SystemAudioVolume',
    user    => 'root',
    require => Sudoers[ 'boot_chime' ],
  }
}
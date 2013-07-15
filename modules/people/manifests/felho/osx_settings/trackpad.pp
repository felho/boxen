class people::felho::osx_settings::trackpad {
  class {'people::felho::osx_settings::trackpad::enable_clicking':
    dragging => true,
  }
  include people::felho::osx_settings::trackpad::disable_natural_scroll
  include people::felho::osx_settings::trackpad::tracking_speed
  include people::felho::osx_settings::trackpad::scrolling_speed
  include people::felho::osx_settings::trackpad::doubleclick_speed
}
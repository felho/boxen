class people::felho::applications::bettertouchtool {
  package { 'BetterTouchTool':
    provider => 'compressed_app',
    source   => 'http://www.boastr.de/BetterTouchTool.zip',
    ensure   => present,
  }
}
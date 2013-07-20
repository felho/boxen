class people::felho::applications::skitch {
  package { 'Skitch':
    provider => 'compressed_app',
    source   => 'http://cdn1.evernote.com/skitch/mac/release/Skitch-2.6.2.zip',
    ensure   => present,
  }
}
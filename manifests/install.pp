class chocolatey_sw::install (
  $command,
  $creates,
  $provider,
) {
  exec { 'install-chocolatey':
    command  => $command,
    creates  => $creates,
    provider => $provider
  }
}

class chocolatey_sw::params {
  case $::operatingsystem{
    windows: {
      $command = 'iex ((new-object net.webclient).DownloadString("https://chocolatey.org/install.ps1"))'
      $creates = ['C:\Chocolatey','C:\ProgramData\chocolatey']
      $provider = powershell
    }

    default: {
      fail("Unsupported OS: ${::operatingsystem}")
    }
  }
}

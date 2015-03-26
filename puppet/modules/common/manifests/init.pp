class common {

# Install 7Zip
  package { '7zip' :
    ensure          => installed,
  }

# Install Command Line 7zip
  package { '7zip.commandline' :
    ensure          => installed,
  }

}
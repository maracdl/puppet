class minecraft { 
  file {'/apt/minecraft':
          ensure => directory,
   }
   file {'/apt/minecraft/minecraft_server.jar':
          ensure => file'
          source => '',
   }
   package {'java':
            ensure => present,
   }
   file {'/apt/minecraft/eula.txt':
          ensure => file,
          content => 'eula=true',
   }
   file {'/etc/systemd/system/minecraft.service':
          ensure => file,
          source => 'puppet::///modules/minecraft/minecraft.service'
   }
}

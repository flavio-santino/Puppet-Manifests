node default {
        
        package { 'ntp' :
                        ensure => installed,
                }
        file { '/etc/motd' :
                source => 'puppet:///files/motd',
        }

}

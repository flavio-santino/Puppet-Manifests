node default {
	
	package { 'ntp' :
			ensure => installed,
		}
	file { '/etc/motd' :
		source => 'puppet:///files/motd',
	}

  host { "${hostname}.lab.novell.com" :
  	ensure => present,
    ip => "$ipaddress",
    host_aliases => "$hostname",
    }

 service { "puppet":
    ensure  => "running",
    enable  => "true",
	}
}
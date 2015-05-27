node default {
	
	package { 'ntp' :
			ensure => installed,
		}
	file { '/etc/motd' :
		source => 'puppet:///files/motd',
	}

  host { "{$name}.lab.novell.com" :
  	ensure => present,
    ip => "$ipaddress",
    host_aliases => "$name",
    }

 service { "puppet":
    ensure  => "running",
    enable  => "true",
	}
}
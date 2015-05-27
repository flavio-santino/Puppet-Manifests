node default {
	
	package { 'ntp' :
			ensure => installed,
		}
	file { '/etc/motd' :
		source => 'puppet:///files/motd',
	}

  host { "$name".lab.novell.com :
  	ensure => present,
    ip => '$ipaddress',
    alias  => $alias ? {
            "$hostname" => undef,
            default     => $alias
		},
	}

}
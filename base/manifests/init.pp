class base {

	$system_update = $osfamily ? {
		'RedHat' => '/usr/bin/yum update -y',
		'Debian' => '/usr/bin/apt-get upgrade -y',
	}

	$dnsutils = $osfamily ? {
		'RedHat' => 'bind-utils',
		'Debian' => 'dnsutils',
	}
	package { ['tree', $dnsutils]:
		ensure => present,
	}
}
	schedule {'system-daily':
		period => daily,
		range  => '00:00 - 01:00',
	}
	
	# exec resource type allow us to execute commands on linux based system 

	exec { $system_update:
		schedule => 'system-daily',
	} 



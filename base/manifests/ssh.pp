class base::ssh {
	# moving to params.pp	
	#case $osfamily{
	#	'RedHat': { $ssh_name = 'sshd'}
	#	'Debian': { $ssh_name = 'ssh'}	
	#}

	# selector method
	# $ssh_name = $osfamily ? {
	#'RedHat'  => 'sshd',
	# 'Debian' => 'ssh',
	#}
	
	
	package{'openssh-package':
		name   => 'openssh-server',
		ensure => present,
	}
	
	file{'/etc/ssh/sshd_config':
		ensure   => file,
		owner    => 'root',
		group    => 'root',
		require  => Package['openssh-package'],
		source   => 'puppet:///modules/base/sshd_config',
	}	

	service {'ssh-service':
		name      => $base::params::ssh_name, # getting the value from params class 
		#alias     => 'ssh-service-name-2',
		ensure    => running,
		enable    => true,
		subscribe => File['/etc/ssh/sshd_config'], 
	}

}

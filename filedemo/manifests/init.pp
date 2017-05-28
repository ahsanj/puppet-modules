class filedemo {
	
	# resource default allows us to specify default attributes
	File {
	 	owner => 'root',
		group => 'root',
		mode  => '0660',
	}
	
	$homedir = "/root"

	file  { "${homedir}/myfile.txt":
		content => "This is a test file created by puppet",

	}

	file {"${homedir}/myfile2.txt":
		content => "This is a test file created by puppet", 
	
	}

	file {"${homedir}/myfile3.txt":
		content => "This is a test file created by puppet",
		owner   => 'root',
		group   => 'finance',
		mode    => '0644',
	}

	file {'/root/motd':
		ensure  => present,
		#content => 'This is a test file managed by content attribute',
		source  => 'puppet:///modules/filedemo/motd',
		owner   => 'root',
		group   => 'root',
		mode    => '0644',
	}

	file {'/root/symlink':
		ensure  => link,
		target  => '/root/motd', # creats a sysmlink
	}

}

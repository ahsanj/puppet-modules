class filedemo {
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

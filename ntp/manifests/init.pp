class ntp ($package = $ntp::params::package_name) inherits ntp::params {
       # inherts ntp::params = declare the params class so that this variable is accessible to us
       # if there is no Heira data and no parameters are passed via class then the vaivle will be default to above
	
	package {'ntp':
		name   => $package_name,
		ensure => present,
	}
	#include ntp::params
	include ntp::file
	# class {'ntp::file': template => 'hello', }
	include ntp::service	
}


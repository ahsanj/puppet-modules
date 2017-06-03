class base::variables {
	file {"/root/vat_test.txt":
		content => $topscope, # added the $topscope variable to site.pp
		owner   => 'root',
		group 	=> 'root',
		mode    => '0644',
	}
	
	$localvariable = "localvar"
	notify {"${::operatingsystem} is your operating system":}
        notify {"${topscope} is your top scope variable":} #Set in the site.pp
	notify {"${nodescope} is your node scope variable":} # set in the site.pp under the node
        notify {"${localvariable} is your local variable":}
}

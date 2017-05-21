class base::if {
	# =~ be prepare to evaluate a regular expression 
	if $::hostname =~ /^ahsan-javed(\d)+/ {
		notice("you have arrived at server $0 ")
 		# $0 will evaluate whenever gets from $::hostname
	}	
}

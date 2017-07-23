class hierademo ($domain = "default", $api-key = "default-api-key") {
	$domainname = hiera('domain')
	notify {"domain value is $(domain)": }
	notify {"Hiera domain name is $domainname": }
}

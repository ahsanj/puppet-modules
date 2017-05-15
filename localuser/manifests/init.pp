class localuser {
	user{'ahsan':
		ensure     => present,
		shell      => '/bin/bash',
		home       => '/home/ahsan',
		gid        => 'wheel',
		managehome => true,
 		password   => '$6$5t759EG8$8RxwPY.ieRG8LBj3MES0k7NiR0s0pjGhXzutTfhSaEJ4k6DFYSSs2GED2gnqqJwBEY.LoAxJxGlt5jLd6sdrger',
	}
	
	user{'jeff':
		ensure     => present,
		home       => '/home/jeff',
		shell      => '/bin/bash',
		groups     => ['wheel','finance'],
		managehome => true,
		password   => '$6$5t759EG8$8RxwPY.ieRG8LBj3MES0k7NiR0s0pjGhXzutTfhSaEJ4k6DFYSSs2GED2gnqqJwBEY.LoAxJxGlt5jLd6sdrger',
	}	

}

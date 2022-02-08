class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC0NVReDpPZmW5DzWPVSgJEJbvSY2o+JNVbepsJguwRX3dsWiCyDgvc6gzYd3unwgjls0d8Cc9FEWaoVOAArwzOAqJvGQLQYXit6EfsoU7Qp56Z1CVgB9ghLlWrRnShwXpxegcwGDIM+pk8PLAZ2Du7AM5bcW+gUjDNK9j6BOF3Bq7iWWy9qGpTqI84V7eOOuVoe60X98kP1JSaegOvvGWqY2UBpt+fThKJsvJk+OMZ9RVJMc65shyP4oY2q2w1HnIJpjfCizj39HRRuLmagKJDTyviVrQ6ndXzF30+NMG41lBVAdzNWBJUl+WeaO7wgIKXWzmvMXAh4h3j1xvQbKnZ',
	}  
}

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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDuG3Vhij07FqDqvGM8+H8OxpYfhdoFIX0J0DGsyrSdEh0UBzBkok4gA+oopCLT2T/bqyxfASqDU3Lo3c3CsSmFrcNi8lHsd+ZRbWTS9GGLp1YT1ni79417eDrf2fLX5JObhhCaUXTY172VPADCpp4L28tnGWvL/Bm6DK4muLj2VfUU0WYwB0NAPAbuzjxs8ByaBcmYRe+D6MD8l+j1s/MTuPxE5pMiNmXL+IYCnU6vAqQ6hkC4y5X5AprejvcNucYN7UT8HQ4/sVgInQoSfTOMrhLGnWrDH49q1UYChzWwjPaUk4QzZGu+wh64S7QJTA/mVHULI6ZrSC1oNw0Sdpu7',
	}  
}

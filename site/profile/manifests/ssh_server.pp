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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDRuiDfk6bOHIQPSv/yQSR9N/QwNK29ckeGe/JOjr2c6EyUgyfmtVXBdhUaAhlFwZ57d06E9iD15PZHQ9OUDezc865ojq1lcbPEHcRKwFrczvItYAx8xVDwm0k9TiVNLNmfmy3AXCA+V70QxXc61TcaF+Kc+x4jlTF0kTCmK/v/wiTHD+QGfzVog7i9wyjUHgmFONcCziLxPHtq/UoH9Bg+oCwLWkKq098cndhgACPmxgX4DbdESXI1RfftIgDOz82e5jT8ZFNHNm5EcQ0bQ97U5xaTZarvyFFCnjSRA1rc1mKhDnhlfca68BXOJQnj1XFUB6N0Clvqn4HpBv/PPAYd',
	}  
}

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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDZmzAGY0M8I95qJjT6jX+vhzWEG4+SNRQ8jQy6XnxWlk9ii8TwmlKCFiH5M2YZ7MVqGt3fip8PrtDesyHGFuaJuXtpm69qP8Y3VAsTyCHBK5SRcU9hzFYSgNh5OCsr7TA7WaIrC0r3bDTTsplK8qeDG4a1Jh7mP79nYM/UeJ2yAg6nEQJLr49ut0pSWG3a8VuukYIEBmuG81tDYoeG5e3LsOgzuIzTxJXeIwijfFXdTk7E3f3vPtxpAkYBSWHT5BDDYUBmL6+StYTVl3PMilr5nkwyZCL8U1J/J3BoyTdt9b9N+/YYJfO5JkAtty74IM5L0nc5d70i2LhRfV5zGslx',
	}  
}

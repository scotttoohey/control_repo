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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDYb62haKLpN0vWxBulpIvAqs+Y7uBmxaw46d7dW0jmYtc0wzHQXS5/R5d2VdfcWLJv+KKR9mTe2kPEUhPi3lwKfNCFk4wX7o4UlMHzMZ7z87ZPT96KNhA7vvVHrJC7dttL0RSmpwnsaNz8Z2M/Rmt7P8PNrnPdn0/IlUjErLWNV0qxuVJTM/2jJ97GR2vtCL8ruoJZI6HUA261VG39lLpdHEmyPjhBenlFmpi7vT6E/+qVuKvdBGjmZfeNA3KPxI/54g1YWw27zy4/S70SsoEuIWWyTbTwJ8TlX2hkQiKm2AdH247MVxj9SOiPZFqQr43VrdpTngWP8ooH8TeM12Dj',
	}  
}

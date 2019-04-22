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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDgnLBCBzovxBDzKPegj/UXBcPAX652ToDglsazpgJcyXf39ok5ygmrzbNWm4HfK/SFzgOYGfOkbe53QFaVwMXM73o/1rBg+7S1njNBNL+QqTTRyBHO/5cFjjCnrJqZk7q6I6ZZmC38BO6rKQUQTP+HhI1yBK4TNScUhISoq2QD7TnVmjb8EeovBK5yrqcgEs7xvgMT0wEiMzo/61IwL+e6SxWLIrtvHWS8kBE8GUsp3Q+c7TwaYqDfBxiFUyuLFYt9QCxfs5iHzKuqK8zgo9fsHOfJuZaXTD0+KC4lkZ4rVVcrPr3BSSSCEfF0ctJ03WBlwmHvHMKSnF0GInh+49bx',
	}  
}

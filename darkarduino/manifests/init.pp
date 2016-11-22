class darkarduino{
	package{"arduino":
		ensure => "installed",
		allowcdrom => true,
	}

	file {"/usr/share/arduino/lib/theme/theme.txt":
                ensure  => file,
                content => template('darkarduino/theme.txt.erb'),
                require => Package["arduino"],
        }

}

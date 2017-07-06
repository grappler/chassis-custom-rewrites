class custom-rewrites (
	$path = '/vagrant/extensions/custom-rewrites',
	$custom_rewrites_config = sz_load_config()
) {

	$custom_rewrites_name = $custom_rewrites_config['hosts'][0]

	file { "/etc/nginx/sites-available/$custom_rewrites_name.d":
		ensure => directory,
		require => File[ "/etc/nginx/sites-available/$custom_rewrites_name" ],
	}

	file { "/etc/nginx/sites-available/$custom_rewrites_name.d/$custom_rewrites_name":
		content => template('custom-rewrites/site.nginx.conf.erb'),
		notify => Service['nginx'],
	}
}

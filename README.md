# Custom Rewrites
A [Chassis](https://github.com/Chassis/Chassis) extension configure custom rewrite rules.

This extension is feature complete.

## Features
- The default rewrite rules remove `/wp/` from `http://vagrant.local/wp/wp-admin/` and update the `WP_SITEURL` with this change too.

## TODO
- Allow the rewrite template be loaded from a project specific location instead from the extension.

## Usage
1. Add this extension to your extensions directory `git clone https://github.com/grappler/chassis-custom-rewrites.git extensions/custom-rewrites`
2. Run `vagrant provision`
3. Edit the file with custom rewrites `extensions/custom-rewrites/modules/custom-rewrites/templates/site.nginx.conf.erb`

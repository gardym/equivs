name              'equivs'
maintainer        'Asher Yanich'
maintainer_email  'asher.yanich@gmail.com'
license           'Apache 2.0'
description       'Installs equivs and provides a recipe to set up equivs.'
version           '0.1.1'

source_url "https://github.com/ayanich/#{name}"
issues_url "https://github.com/ayanich/#{name}/issues"

long_description <<-EOH
= DESCRIPTION:

This installs equivs and provides a recipes to setup equivs

= REQUIREMENTS:

Debian or Ubuntu preferred.

= NOTES:

This is a fork of original author/maintainer 'Mike Gardiner'
'conversationing@gmail.com' at "https://github.com/gardym/equivs".

EOH
depends 'apt'

recipe 'equivs', 'Installs equivs'
recipe 'equivs::system_install', 'Installs equivs'

%w(ubuntu debian).each { |os| supports os }

maintainer        "Mike Gardiner"
maintainer_email  "conversationing@gmail.com"
license           "Apache 2.0"
description       "Installs equivs and provides a recipe to set up equivs."
version           "0.0.1"

recipe "equivs", "Installs equivs"
recipe "equivs::system_install", "Installs equivs"

%w{ubuntu debian}.each { |os| supports os }

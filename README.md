Description
===========

This cookbook includes recipes for using 'equivs' on Debian-based
boxes to create and install dummy dpkgs. This is useful for satisfying
dependencies on systems when you have compiled a package from source,
or when a package is no longer available to apt-sources, but IS still
a dependency for other packages (hello Java/Oracle/Ubuntu circa 2012).

Recipes
=======

default
-------
-> delegates to system_install

system_install
--------------
This recipe will install 'equivs'.

Resources/Providers
===================

Installing dummy packages
-------------------------

# Actions

- :install: installs the specified dummy package.

# Attribute Parameters

- :package_name: The name of the dummy package.

# Examples

    # install a dummy package named 'sun-java6-hre'
    equivs_install 'sun-java6-jre'

Usage
=====

Put `recipe[equivs]` in your run list. When you want to install dummy
packages, use the `equivs_install` resource.

License and Author
==================

Author:: Mike Gardiner <conversationing@gmail.com>


Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.


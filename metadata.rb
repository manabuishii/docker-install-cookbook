name             'docker-install'
maintainer       'RIKEN Bioinformatics Research Unit Released'
maintainer_email 'Manabu ISHII'
license          'MIT'
description      'Install docker'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.0.0'

depends 'apt', '= 2.7.0'
depends 'docker', '= 2.16.0'

maintainer       "Anton Panasenko"
maintainer_email "anton.panasenko@gmail.com"
license          "MIT"
description      "Save node state for Chef Solo"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.2"

%w{ ubuntu debian redhat centos fedora freebsd}.each do |os|
  supports os
end
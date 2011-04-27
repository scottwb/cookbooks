maintainer       "Scott W. Bradley"
maintainer_email "scottwb@gmail.com"
license          "Apache 2.0"
description      "Sets a root email alias in /etc/aliases"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.3"

recipe "root_email_alias", "Sets a root email alias in /etc/aliases"

%w{ fedora }.each do |os|
  supports os
end

attribute "root_email_alias",
  :display_name => "root_email_alias",
  :description => "Hash of root_email_alias attributes",
  :type => "hash"

attribute "root_email_alias/forward_to",
  :display_name => "Forward to",
  :description => "Email address to forward root mails to",
  :default => "yourname@example.com",
  :required => "required"


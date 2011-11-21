#
# Cookbook Name:: admin_tools
# Recipe:: default
#
# Copyright 2011, Scott W. Bradley <scottwb@gmail.com>
#
# License: Apache 2.0
#

packages = [
  'traceroute',
  'tcpdump',
]

case node[:platform]
when "fedora"
  packages.each do |pkg|
    package pkg do
      action :install
    end
  end
end

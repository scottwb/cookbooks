#
# Cookbook Name:: admin_tools
# Recipe:: default
#
# Copyright 2011, Scott W. Bradley <scottwb@gmail.com>
#
# License: Apache 2.0
#

packages = [
  'ack',
  'screen',
  'traceroute',
  'tcpdump',
  'wget'
]

case node[:platform]
when "fedora", "amazon"
  packages.each do |pkg|
    package pkg do
      action :install
    end
  end
end

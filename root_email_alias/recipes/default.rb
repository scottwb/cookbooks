#
# Cookbook Name:: root_email_alias
# Recipe:: default
# Author:: Scott W. Bradley (<scottwb@gmail.com>)
#
# Copyright 2011, Scott W. Bradley
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

bash "set root email forwarding" do
  code <<-EOT
    sed -i -e 's/#\\{0,1\\}root:\\([[:space:]]\\+\\).*/root:\\1#{node[:root_email_alias][:forward_to]}/' /etc/aliases
    newaliases
  EOT
  not_if "grep -q #{node[:root_email_alias][:forward_to]} /etc/aliases"
end

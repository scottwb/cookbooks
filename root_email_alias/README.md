DESCRIPTION
============

Sets the `root` email address to forward to a specified address.

REQUIREMENTS
============

Only tested on Fedora, but really not that complex. Should be easily portable to others.

ATTRIBUTES
==========

The file `attributes/default.rb` contains one attribute: the email address you want root's emails to be sent to.

USAGE
=====

Edit `attributes/default.rb` to specify the email address you want root emails to go to, then include the `root_email_alias` recipe.

LICENSE & AUTHOR
================

Author:: Scott W. Bradley (<scottwb@gmail.com>)

Copyright 2011, Scott W. Bradley

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.


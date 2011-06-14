Summary
-------

This is a really basic page CMS which fits neatly into the Spree Administration toolbar.

I recommend that you also use Spree Editor and configure it to use pages_body:

    https://github.com/spree/spree_editor

Installation
------------
  
    gem "spree_pages", :git => 'git://github.com/sebastyuiop/spree_pages.git'

    rake spree_pages:install

    rake db:migrate

Copyright (c) 2011 sebastyuiop, released under the New BSD License
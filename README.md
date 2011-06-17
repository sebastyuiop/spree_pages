Summary
=======

This is a really basic page CMS which fits neatly into the Spree Administration toolbar.

To view your pages from the shop go to:

    /pages/whatever-your-permalink-is

I recommend that you also use [Spree Editor](https://github.com/spree/spree_editor) and configure it to use pages_body.

Installation
------------
  
    gem "spree_pages", :git => 'git://github.com/sebastyuiop/spree_pages.git'
    
    bundle install

    rake spree_pages:install

    rake db:migrate    

Copyright (c) 2011 sebastyuiop, released under the New BSD License
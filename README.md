Summary
=======

This is a really basic page CMS which fits neatly into the Spree Administration toolbar.

To view your pages from the shop go to:

    /pages/whatever-your-permalink-is

I recommend that you also use [Spree Editor](https://github.com/spree/spree_editor) and configure it to use pages_body.

Installation
------------
Add the following to your Gemfile: 

    gem "spree_pages", :git => 'git://github.com/sebastyuiop/spree_pages.git'

Run bundle install

    bundle install

To copy and apply required migrations run:

    rails g spree_pages:install

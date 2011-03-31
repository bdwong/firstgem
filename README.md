First Gem
=========

This repository contains a simple gem with rspec and a native extension.

Installation
------------

Add gem to the Gemfile:

    # Not tested yet!
    # TODO: test on private repository
    gem 'firstgem', source => 'git://github.com/bdwong/firstgem.git'

Then just bundle install and you're good to go!

Developers
----------

Clone the source from Github, then build for development:

    $ bundle install    # Install prerequisites
    $ rake native       # Build the extension
    $ rake spec         # run tests, for example.

For local installation, the recommended way is:

    $ gem build firstgem.gemspec
    $ gem install firstgem*.gem

Sources:

 * [Creating and publishing your first rubygem](http://blog.thepete.net/2010/11/creating-and-publishing-your-first-ruby.html)
 * [Setup rspec to test a gem not rails](http://blog.thepete.net/2010/11/creating-and-publishing-your-first-ruby.html)
 * [rake-compiler](https://github.com/luislavena/rake-compiler)
 * [Using Gemspecs as Intended](http://yehudakatz.com/2010/04/02/using-gemspecs-as-intended/)

Other Possibilities
-------------------

 * [NewGem](http://newgem.rubyforge.org/) doesn't work with rspec 2 but it has some nice features.

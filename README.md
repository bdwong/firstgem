First Gem
=========

This repository contains a simple gem with rspec and a native extension.

Installation
------------

Add gem to the Gemfile:

    # TODO: test on private repository
    gem 'firstgem', source => 'git://github.com/bdwong/firstgem.git'

Then just bundle install and you're good to go!

Troubleshooting
---------------

Gems installed from github do not show up on the gem list.
You can see the gems with:

    bundle list

To make sure things are working properly, you can do this from irb:

    require "rubygems"
    require "bundler/setup"
    require "firstgem"

Some simple tests

    a = Shape.new('triangle') # The ruby part of the gem
    a.describe
     => "I am a triangle."
    b = Calculator.new  # The native extension
    b.Add(2+2)
     => 4.0


More troubleshooting tips on the [Bundler page](https://github.com/carlhuda/bundler/blob/master/ISSUES.md)

Developers
----------

Clone the source from Github, then build for development:

    $ bundle install    # Install prerequisites
    $ rake compile      # Compile extensions if present
    $ rake spec         # run tests, for example.

For local installation, the recommended way is:

    $ rake install      # Build and install the gem

Or you can do it manually with gem:

    $ gem build firstgem.gemspec
    $ gem install firstgem*.gem


Sources:
 * [Using Gemspecs as Intended](http://yehudakatz.com/2010/04/02/using-gemspecs-as-intended/)
 * [New Gem with Bundler](http://railscasts.com/episodes/245-new-gem-with-bundler)
 * [Creating and publishing your first rubygem](http://blog.thepete.net/2010/11/creating-and-publishing-your-first-ruby.html)
 * [Setup rspec to test a gem not rails](http://blog.thepete.net/2010/11/creating-and-publishing-your-first-ruby.html)
 * [rake-compiler](https://github.com/luislavena/rake-compiler)

Other Possibilities
-------------------

 * [Jeweler](https://github.com/technicalpickles/jeweler) is nice but uses shoulda instead of rspec.
 * [NewGem](http://newgem.rubyforge.org/) doesn't work with rspec 2 but it has some nice features.

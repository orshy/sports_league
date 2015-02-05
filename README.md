sports league
=========

A web app that allows you to create teams and assign them to a league. 
Written in [Ruby](http://www.ruby-lang.org/) with the help of [RSpec](http://rspec.info/), [Sinatra](http://www.sinatrarb.com/), and [Bootstrap](http://http://getbootstrap.com/). The data is stored in a PostgreSQL backend.

Usage
-----

To set up the database run these commands:

```
rake db:create
rake db:migrate
rake db:test:prepare
```

Run [Bundler](http://bundler.io/) from the project directory to install all the gems word-frequency depends on:

```ruby
bundle -install
```
```ruby
run bundle
```

Start the Sinatra server:

```ruby
ruby app.rb
```

In your browser, navigate to [http://localhost:4567/](http://localhost:4567/).

About
-----

Written by Philip Orchard at [Epicodus](http://www.epicodus.com/).

License
-------

This projected is licensed under the terms of the MIT license.

source 'http://rubygems.org'

gem 'rails'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

platforms :ruby do
  gem 'sqlite3'
  # Deploy with Capistrano
  gem 'capistrano'
end

platforms :jruby do
  gem 'activerecord-jdbc-adapter'

  # As rails --database switch does not support derby, hsqldb, h2 nor mssql
  # as valid values, if you are not using SQLite, comment out the SQLite gem
  # below and uncomment the gem declaration for the adapter you are using.
  # If you are using oracle, db2, sybase, informix or prefer to use the plain
  # JDBC adapter, comment out all the adapter gems below.

  # SQLite JDBC adapter
  gem 'jdbc-sqlite3', :require => false

  gem 'jruby-openssl'
  gem 'warbler'

end

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger (ruby-debug for Ruby 1.8.7+, ruby-debug19 for Ruby 1.9.2+)
gem 'ruby-debug'
# gem 'ruby-debug19', :require => 'ruby-debug'

# Bundle the extra gems:
# gem 'bj'
# gem 'nokogiri'
# gem 'sqlite3-ruby', :require => 'sqlite3'
# gem 'aws-s3', :require => 'aws/s3'

gem 'will_paginate', '~> 3.0.pre2'
gem 'annotate'
gem 'normalize_attributes'
gem 'haml-rails'
gem 'sass'
gem 'jquery-rails'
gem 'devise'
gem 'meta_where'

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
group :development, :test do
  gem 'rspec-rails'
  gem 'cucumber-rails'
  gem 'capybara'
  gem 'launchy'
  gem 'autotest'
  gem 'autotest-notification'
  gem 'database_cleaner'
  gem 'spork', '~> 0.9.0.rc'
  gem 'machinist', '>= 2.0.0.beta1'
end

group :development do
  gem 'hpricot'
  gem 'ruby_parser'
end

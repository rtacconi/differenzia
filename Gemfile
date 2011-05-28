source 'http://rubygems.org'

gem 'rails'
gem 'compass'
gem 'annotate'
gem 'normalize_attributes'
gem 'haml-rails'
gem 'jquery-rails'
gem 'devise'
gem 'meta_where'
gem 'simple_form'
gem 'fastercsv'
gem 'inherited_resources'
gem 'inherited_resources_views'
gem 'rails_config'
gem 'simple-navigation'
gem 'mongrel'
gem 'kaminari'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

platforms :ruby do
  gem 'sqlite3'
  gem 'pg'
  # Deploy with Capistrano
  gem 'capistrano'
end

platforms :jruby do
  gem 'activerecord-jdbc-adapter'
  gem 'arel'

  # As rails --database switch does not support derby, hsqldb, h2 nor mssql
  # as valid values, if you are not using SQLite, comment out the SQLite gem
  # below and uncomment the gem declaration for the adapter you are using.
  # If you are using oracle, db2, sybase, informix or prefer to use the plain
  # JDBC adapter, comment out all the adapter gems below.

  # Postgres JDBC adapter
  gem 'activerecord-jdbcpostgresql-adapter'
  gem 'jdbc-postgres'
  gem 'jruby-openssl'
end

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger (ruby-debug for Ruby 1.8.7+, ruby-debug19 for Ruby 1.9.2+)
#platforms :ruby_18 do
#  gem 'ruby-debug'
#  gem 'mongrel', '1.1.5'
#  gem 'thin'
#end

#platforms :ruby_19 do
  #gem 'ruby-debug19', :require => 'ruby-debug'
  #gem 'mongrel', '1.2.0.pre2'
#end

# Bundle the extra gems:
# gem 'bj'
# gem 'nokogiri'
# gem 'sqlite3-ruby', :require => 'sqlite3'
# gem 'aws-s3', :require => 'aws/s3'

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
group :development, :test do
  gem 'rspec-rails'
  gem 'cucumber-rails'
  gem 'capybara'
  gem 'launchy'
  gem 'autotest-rails'
  gem 'autotest-notification'
  gem 'database_cleaner'
  gem 'spork', '~> 0.9.0.rc'
  gem 'machinist', '>= 2.0.0.beta1'
  gem 'faker'
end

group :development do
  gem 'hpricot'
  gem 'ruby_parser'
  gem 'warbler' if defined?(JRUBY_VERSION)
end

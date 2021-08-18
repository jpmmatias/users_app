source 'http://rubygems.org'

gem 'activerecord', '~> 6.0', '>= 6.0.3.2', require: 'active_record'
gem 'bcrypt'
gem 'bigdecimal', '1.4.2'
gem 'fast_jsonapi'
gem 'rack-contrib'
gem 'rake'
gem 'require_all'
gem 'sinatra'
gem 'sinatra-activerecord', require: 'sinatra/activerecord'
gem 'sinatra-contrib', require: false
gem 'sinatra-cross_origin'
gem 'thin'

group :development do
  gem 'faker'
  gem 'pry'
  gem 'tux'
end

group :development, :test do
  gem 'rerun'
  gem 'sqlite3'
end

group :test do
  gem 'database_cleaner', git: 'https://github.com/bmabey/database_cleaner.git'
  gem 'rack-test'
  gem 'rspec'
end

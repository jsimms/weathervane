require 'rubygems'
require 'sinatra'

# In Sinatra, a route is an HTTP method paired with a URL-matching pattern.
# Each route is associated with a block:


=begin
get '/' do
  erb :index
end
=end

configure :production do
  # Configure stuff here you'll want to
  # only be run at Heroku at boot

  # TIP:  You can get you database information
  #       from ENV['DATABASE_URI'] (see /env route below)
end

# Quick test
get '/' do
  "Congradulations!
   You're running a Sinatra application on Heroku!"
end

# Test at <appname>.heroku.com

# You can see all your app specific information this way.
# IMPORTANT! This is a very bad thing to do for a production
# application with sensitive information

# get '/env' do
#   ENV.inspect
# end

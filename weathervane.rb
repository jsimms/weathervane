require 'rubygems'
require 'sinatra'

# In Sinatra, a route is an HTTP method paired with a URL-matching pattern.
# Each route is associated with a block:

get '/' do
  erb :index
end

get '/sensor/' do
  "Temp is: #{params[:temp]} and Humidity is #{params[:hum]}"
end

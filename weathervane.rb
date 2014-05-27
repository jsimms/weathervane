require 'rubygems'
require 'sinatra'

# In Sinatra, a route is an HTTP method paired with a URL-matching pattern.
# Each route is associated with a block:

get '/' do
  erb :index
end

get '/sensor/' do

  File.open 'temp_data.txt', 'w' do |f|
    f.write params[:temp]
  end

  File.open 'hum_data.txt', 'w' do |f|
    f.write params[:hum]
  end

  "Temperature is #{params[:temp]} and Humidity is #{params[:hum]}"
end

get '/checkfiles/' do

  if (File.exist?('temp_data.txt') && File.exist?('hum_data.txt'))
    "temp_data and hum_data exist"
  else
    "one of the files does not exist"
  end

end

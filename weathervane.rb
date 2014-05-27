require 'rubygems'
require 'sinatra'

def checkfiles
  if (File.exist?('temp_data.txt') && File.exist?('hum_data.txt'))
    'Both files are here'
  else
    "One or both of the data files are missing"
  end
end

def temp_read
  temp = File.read 'temp_data.txt'
  "Temperature is #{temp}"
end

def hum_read
  hum = File.read 'hum_data.txt'
  "Humidity is #{hum}"
end

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

get '/status/' do
  erb :status
end

require 'rubygems'
require 'sinatra'

# Some Methods
def time_read
  Time.now.asctime
end

def sensor_read
  File.open 'temp_data.txt', 'w' do |f|
    f.write params[:temp]
  end

  File.open 'hum_data.txt', 'w' do |f|
    f.write params[:hum]
  end
end

def temp_read
  temp = File.read 'temp_data.txt'
  temp.to_s
end

def hum_read
  hum = File.read 'hum_data.txt'
  hum.to_s
end

def checkfiles
  if (File.exist?('temp_data.txt') && File.exist?('hum_data.txt'))
    'Both files are here'
  else
    "One or both of the data files are missing"
  end
end

# Some Routes
get '/' do
  erb :index
end

get '/time' do
  time_read
end

get '/sensor' do
  sensor_read
end

get '/sensor/temp' do
  temp_read
end

get '/sensor/hum' do
  hum_read
end

get '/status' do
  erb :status
end

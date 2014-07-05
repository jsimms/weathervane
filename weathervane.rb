require 'rubygems'
require 'sinatra'

get '/' do
  erb :index
end

get '/time' do
  Time.now.asctime
end

get '/sensor' do
  File.open 'temp_data.txt', 'w' do |f|
    f.write params[:temp]
  end
  File.open 'hum_data.txt', 'w' do |f|
    f.write params[:hum]
  end
  "OK, Temp: #{params[:temp]} & Hum: #{params[:hum]}"
end

get '/sensor/temp' do
  temp = File.read 'temp_data.txt'
  temp.to_s
end

get '/sensor/hum' do
  hum = File.read 'hum_data.txt'
  hum.to_s
end

get '/status' do
  if (File.exist?('temp_data.txt') && File.exist?('hum_data.txt'))
    'Both files are here'
  elsif (File.exist?('temp_data.txt') && !File.exist?('hum_data.txt'))
    "hum file is missing."
  elsif (!File.exist?('temp_data.txt') && File.exist?('hum_data.txt'))
    "temp file is missing"
  else
    "Both of the data files are missing"
  end
end

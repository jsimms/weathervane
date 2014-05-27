# weathervane

A Sinatra app that gets an http request, creates a txt file, and displays the data.
Used as a companion web app to an arduino setup.

### to-do
1. Receive GET request data. (GET with Dynamic Parameters through Net::HTTP class? Or keep looking at URI module with parse method? Easier way using Sinatra? )
2. Put data into temp and hum txt files
3. Create method that reads and display data (temp.rb and hum.rb)
4. Create HTML that displays the data
5. Use jquery to update the page every second or so
6. Do a little CSS for style points

# weathervane

Weathervane is the partner Sinatra app to my (compost monitor sketch)[https://github.com/jsimms/compost_monitor]
It simply grabs the get request sent from the Arduino and displays it on a webpage.
  


### Improvements
1. Have the sensor send a timestamp and use that instead of the server time.
2. Gracefully handle 500 errors if txt files aren't there.

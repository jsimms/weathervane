# weathervane

Weathervane is the partner Sinatra app to my [compost monitor sketch] (https://github.com/jsimms/compost_monitor).
It simply grabs the get request sent from the Arduino and displays it on a webpage.

Big thank you to Open Home Automation for putting up [a PHP version of this app] (https://github.com/openhomeautomation/wifi-weather-station). I simply rewrote it using Ruby and Sinatra.

### Improvements
1. Have the sensor send a timestamp and use that instead of the server time.
2. Gracefully handle 500 errors if txt files aren't there.
3. Only write the txt files if the params are present.

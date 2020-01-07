# AirVisualData

Playing around with data from my AirVisual Pro from IQAir.

As the [air quality in Xi'an, China](http://aqicn.org/city/xian/#) worsened during the winter months, 
I bought an air purifier and an air quality monitor to understand the issues and to protect my health.
This analysis is in no way rigorously scientific. At best it is a set of observations and a vehicle 
for playing around with R.

## IQAir's AirVisual Pro and Smart Air's Blast Air Purifier

I bought both the monitor and the purifier from [Smart Air](https://smartairfilters.com/cn/en/). Smart Air is a Chinese company 
started by a foreign worker concerned about the air quality. I have no connection with the company other than being 
a satisfied customer.

### [Smart Air Blast Air Purifier](https://smartairfilters.com/cn/en/product/blast-ffu/)

The Blast Air Purifier is a tall metal box on wheels that houses a HEPA filter. The design is wonderfully simple -- just a fan
and a filter. The fan is quiet. The filter is large. It just works.

### [IQAir AirVisual Pro](https://www.iqair.com/air-quality-monitors/airvisual-pro)

This device is in a neat package. It consists of a display, software, and according to the website "professional grade sensors."
The crucial measurement is a category of pollutants known as particulate matter (PM) 2.5 micrometers and smaller. 
Particulate matter this small passes from your lungs into the blood stream which is 
[not a good thing](https://en.wikipedia.org/wiki/PM2.5).


Every 10 seconds, the AirVisual Pro adds a row to a file with the following data:
```
Date;Time;Timestamp;PM2_5(ug/m3);AQI(US);AQI(CN);PM10(ug/m3);PM01(ug/m3);Outdoor AQI(US);Outdoor AQI(CN);Temperature(C);Temperature(F);Humidity(%RH);CO2(ppm);VOC(ppb)
1970/01/02;19:36:32;156992;73.8;160;99;81.0;52.0;0;0;15.0;59.0;53;1143;-1
```
At the end of a month, the device smarts a new file.

## Smart Air Blast Startup

The first thing to learn was how bad was the air in my office and how quickly would the Blast remove the 2.5 micron particles.
The office air was not too bad. However, the office air reading was exactly the same as the outdoor air. No surprise as 
windows in my office are frequently open and there is smoking in the office.

The good news is that the Blast removed the PM2.5 pollutants within an hour. The graph plots PM2.5 during the first 4000 seconds of operation. 


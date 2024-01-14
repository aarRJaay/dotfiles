#!/usr/bin/bash

run_segment() {
               WEATHER=$(jq '.weather[0].description'  ~/.config/weatherGetter/currentWeather.json)
               TEMP=$(jq '."main".temp' ~/.config/weatherGetter/currentWeather.json)
               # FEELSLIKE=$(jq '."main".feels_like' ~/.config/weatherGetter/currentWeather.json)
               SUNRISE=$(jq '."sys".sunrise' ~/.config/weatherGetter/currentWeather.json)
               SUNSET=$(jq '."sys".sunset' ~/.config/weatherGetter/currentWeather.json)
               
                WEATHER=${WEATHER#"\""}
                WEATHER=${WEATHER%"\""}
                SUNRISE=${SUNRISE#"\""}
                SUNRISE=${SUNRISE%"\""}
                SUNSET=${SUNSET#"\""}
                SUNSET=${SUNSET%"\""}
               
                echo  $WEATHER \(🌡 $TEMP\)  🌅 $SUNRISE 🌑 $SUNSET
    }
return 0



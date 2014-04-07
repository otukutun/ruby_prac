#!/usr/bin/env ruby

require 'rest_client'
require 'json'
forecast_json =  RestClient.get 'http://weather.livedoor.com/forecast/webservice/json/v1?city=030010'
forecast = JSON.parse(forecast_json)
puts forecast["forecasts"][0]["telop"]

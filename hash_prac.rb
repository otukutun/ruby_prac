#!/usr/bin/env ruby

#prac1
wday = {sunday: "日曜日", monday: "月曜日", tuesday: "火曜日", wednesday: "水曜日", thursday: "木曜日", friday: "金曜日", saturday: "土曜日"}

#prac2
p wday.size

#prac3

wday.each do |en,jp|
  puts "「" + en.to_s + "」は" + jp + "のことです。"
end

#prac4

def str2hash(str)
  hash = Hash.new()
  array = str.split("/\s+/")
  while key = array.shift
    value = array.shift
    hash[key] = value
  end
  return hash
end

p str2hash "blue 青 white 白\nred 赤"

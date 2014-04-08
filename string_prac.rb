#!/usr/bin/env ruby

#prac1

str = "Ruby is an object oriented programming language"
ary = str.split()
p ary

#prac2
p ary.sort

#prac3
p ary.sort_by{|s| s.downcase }

#prac4
p ary.each{|s| s.capitalize!}

#prac5

ary2 = str.chars
count = Hash.new(0)

ary2.each do |s|
  count[s] += 1
end

count.each {|c| print c}

#prac6

def kan2num(kan)
  unless kan.kind_of?(String)
    return false
  end
  kan_ary = kan.chars
  num_ary = Array.new()
  kan_ary.each do |s|
    case s
    when "一"
      num_ary << 1
    when "二"
      num_ary << 2
    when "三"
      num_ary << 3
    when "四"
      num_ary << 4
    when "五"
      num_ary << 5
    when "六"
      num_ary << 6
    when "七"
      num_ary << 7
    when "八"
      num_ary << 8
    when "九"
      num_ary << 9
    end
  end
  num_ary
end

p kan2num("五七")

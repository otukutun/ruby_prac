#!/usr/bin/env ruby
#conding: utf-8

#prac1
mail_address = "test@gmail.com"
/^(.+)@(.+)$/ =~ mail_address

local_part = $1
domein_part = $2
p local_part, domein_part

#prac2

str = "オブジェクト指向は難しい！なんて難しいんだ！"
p str.gsub(/難しいんだ/,"簡単なんだ").gsub(/難しい/,"簡単だ")

#prac3

def word_capitalize(str)
  str.split(/\-/).collect do |w|
    w.capitalize
  end.join('-')
end

p word_capitalize("test-aappp-fjoeia-few")

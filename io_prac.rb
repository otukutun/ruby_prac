#!/usr/bin/env ruby
#coding: utf-8

#prac1
file_name = "/Users/otukutun/dev/ruby/test.txt"
line_count = 0
word_count = 0
char_count = 0
File.open(file_name) do |io|
  while line = io.gets
    line_count += 1
    words = line.split(/\s+/).reject{|w| w.empty? }
    word_count += words.length
    char_count += line.length
  end
end

p line_count, word_count, char_count

#prac2

def reverse()
end


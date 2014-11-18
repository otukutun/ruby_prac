#!/usr/bin/env ruby
#conding: utf-8

def default_argument_for_block
  yield
end

default_argument_for_block do |val ='Hi'|
  puts val
end

def flexible_argument_for_block
  yield 1, 2, 333
end

flexible_argument_for_block do |*params|
  puts params.inspect
end

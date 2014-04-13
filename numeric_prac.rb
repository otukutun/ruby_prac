#!/usr/bin/env ruby

#prac1
def cels2fahr(cels)
  return cels.to_f * 9 / 5 + 32
end

p "prac1"
p cels2fahr 20

#prac2
def fahr2cels(fahr)
  return (fahr.to_f - 32) * 5 / 9
end

p "prac2"
p fahr2cels 20

#prac3
def dice()
  prng = Random.new()
  return prng.rand(1..9)
end

p "prac3"
p dice

#prac4
def dice10()
  prng = Random.new()
  sum = 0
  10.times do |num|
    sum += prng.rand(1..10)
  end
  return sum
end

p "prac3"
p dice10

#prac5
def prime?(num)
  return false unless num.kind_of?(Integer) or num > 2
  2.upto(num) do |i|
    break if num == i
    return false if num % i == 0
  end
  return true
end

p prime? 10

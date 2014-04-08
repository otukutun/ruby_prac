a = []

for i in 1..100
  a << i
end

p a
p
a2 = a.collect do |item|
  item * 100
end

p a2
#a.collect! do |item|
#  item * 100
#end
#
#p a

a3 = a.reject do |j|
  j % 3 != 0
end
p a3

a.reject! do |k|
  k % 3 != 0
end

a.reverse!

p a

b = (1..100).to_a

sum = 0
b.each do |l|
  sum += l
end

p sum

#c = (1..100).to_a

def sum_array(nums1,nums2)
  sum_array = Array.new
  nums1.zip(nums2) do |a,b|
    sum_array << a + b
  end
  return sum_array
end

d = %w(1,2,3)
e = %w(4,5,6)
p sum_array(d,e)

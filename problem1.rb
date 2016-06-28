require 'Zone'

max = 1000-1
sum = 0
for x in 1..max
  if (x%3==0||x%5==0)
    sum = sum +x
  end
end

puts sum

Zone.new(4)




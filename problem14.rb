def time_diff_milli(start, finish)
  (finish - start) * 1000.0
end

t1 = Time.now

max_count=0
target=0
stored_coll=Hash.new()
for i in 1..1000000
  n=i
  count =1
  while n>1
    if stored_coll.has_key?(n)
      count+=stored_coll[n]-1
      n=1
    else
      if n%2==0
        n=n/2
      else
        n=3*n+1
      end
      count+=1
    end
  end
  stored_coll[i] = count

if count>max_count
  max_count=count
  target=i
end

end

puts "Max at #{target} #{max_count}"

t2 = Time.now
puts time_diff_milli(t1,t2)




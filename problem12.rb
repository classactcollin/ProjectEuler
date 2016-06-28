
n=10000
last=(n * (n+1))/2
puts last

def divisors(n)
    count=2 # accounts for 'n' and '1'
    i=2
    while(i**2 < n)
      if(n%i==0)
        count+=2
      end
        i+=1


    end
    count+=1 if i**2==n
  count
end

max=1
i=1
while max<500
  max= divisors(i)
  i+=1

end

puts i

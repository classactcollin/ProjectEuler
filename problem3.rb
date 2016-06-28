
primes = [2]
factors = []
num=600851475143

def isPrime?(n,primesList)
  unless(primesList.map {|x| n%x}.include?(0))
    primesList.push(n)
  end
  primesList
end

for i in (3..10000).step(2)
  if(num%primes.last==0)
    factors.push(primes.last)
  end
  primes=isPrime?(i,primes)
end
#puts primes
puts "factors"
puts factors.uniq()

puts factors.uniq().inject(:*)











def primesList(primes)

  primes
end
=begin

for i in 2..100
  if isPrime?(i)

    puts "#{i} is prime"
  end
end
=end


#600851475143


#puts primes



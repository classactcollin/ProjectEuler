i=20
a=*(1..i)
c=Hash.new()

def time_diff_milli(start, finish)
  (finish - start) * 1000.0
end

t1 = Time.now






primes = [2]
def isPrime?(n,primesList)
  unless(primesList.map {|x| n%x}.include?(0))
    primesList.push(n)
  end
  primesList
end

for i in 3..a.size
  primes=isPrime?(i,primes)
end



primes.each{|i|
  c[i]=0

}


c.each_key{
  |x|
  tryAgain = true

  while tryAgain == true
    count = 0



  a.map!{ |a|
    a%x == 0 ? (
    count +=1
    a/x
    )
    : a }

    if count >0
      c[x] = c[x] +1
    else
      tryAgain = false
    end
  end
}


total =1
c.each_pair{|x,y| total= (x**y)*total}
# arbitrary elapsed time
t2 = Time.now

puts total

puts "Time: #{time_diff_milli t1, t2}"


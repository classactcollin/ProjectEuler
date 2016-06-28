target =10001

def time_diff_milli(start, finish)
  (finish - start)
end

# arbitrary elapsed time



def isPrime?(n)
  if n % 2 == 0
    return false
  end
  p=3

  while p < (n**0.5+1)
    if n % p == 0

      return false
    end
    p+=2


  end
  return true

end

def nthPrime(n)

  count =1
  i=1
  while count< n
    i+=2
    if isPrime?(i)
      count+=1
    end

  end
  i
end



t1 = Time.now

primeList=nthPrime(target)
puts primeList


t2 = Time.now





puts "Time: #{time_diff_milli t1, t2}"
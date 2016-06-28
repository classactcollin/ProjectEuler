
  sum = 0
  x = 0
  y = 1


  while y < 1000

    seq = y + x
    if(seq%2==0)
      sum = sum + seq
    end
    x = y
    y = seq

  end

  puts sum

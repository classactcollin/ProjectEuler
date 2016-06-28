class Problem9

  @arr=[]
  a=1
  b=2
  c=1000-a-b
  c=Math.sqrt(a**2+b**2)
  a=1
  count =1

  while a<b

    b= 1000.0*(a-500)/(a-1000)


    c=(a**2-1000*a+500000.0)/(1000-a)
    if(b%1==0&&c%1==0)
      if(a<b&&b<c)


      puts a
      puts b
      puts c
        break
      end
    end

    a+=1






  end

  puts a*b*c



end
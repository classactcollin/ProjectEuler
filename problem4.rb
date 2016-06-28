

  #puts num.to_s.chars.map(&:to_i)



  def isPalendrome(num)
    a=num.to_s.chars.map(&:to_i)

    while a.length > 1
      if a.pop != a.shift
        return false
      end
    end
    true
  end

  x = 0
  y = 0
  arr = Hash.new()


  for i in (999).downto(100)
    for j in (i).downto(100)
      if(isPalendrome(i*j))

        #puts "#{i} times #{j} = #{i*j}"
        arr["#{i} times #{j}"] = i*j

      end

    end
  end

  #puts @hash.sort_by{|k,v| v}

  puts arr.sort_by{|k,v| v}.last



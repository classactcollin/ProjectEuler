
require 'matrix'

source=0
x_node=source
y_node=source
sink=3

class Matrix
  def []=(i, j, x)
    @rows[i][j] = x
  end
end



grid =Matrix.zero(3)
for j in (0..grid.column_size-1)
    grid[0,j]=1
end

def route_num(cube_size)

end
for i in (0..grid.row_size-1)
  for j in (0..grid.column_size-1)
    if j==0
      grid[i,j]=1

    elsif 0<j&&j<i
      grid[i,j]=grid[i-1,j]+grid[j,i-1]

    elsif i==j
      grid[i,j]=2*grid[i,j-1]


    end
  end
end


puts grid.inspect


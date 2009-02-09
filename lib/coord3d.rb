module Coord3d
  class Vector
    attr_accessor :x
    attr_accessor :y
    attr_accessor :z

    def initialize(xx=0,yy=0,zz=0)
      @x = xx
      @y = yy
      @z = zz
    end

    def to_s
      "<#{x}, #{y}, #{z}>"
    end

    def ===(input)
      input[0] == x && input[1] == y && input[2] == z
    end

    def +(other)
      Vector.new(x + other.x,y + other.y,z + other.z)
    end

    def -(other)
      Vector.new(x - other.x,y - other.y,z - other.z)
    end

    def -@
      self * -1
    end

    def ~
      self.mag
    end

    def mag
      Math.sqrt(self * self)
    end

    alias r mag

    #radius in polar coords
    def s
      Math.sqrt(x**2 + y**2)
    end

    def theta
      Math.asin(y/s)
    end

    def phi
      Math.acos(z/r)
    end

    def unit
      self/self.mag
    end

    def *(other)
      if other.kind_of? Vector
        other.x * x+other.y * y+other.z * z
      else
        Vector.new(other*x,other*y,other*z)
      end
    end

    def /(other)
      Vector.new(x/other,y/other,z/other)
    end

  end

  X = Vector.new(1,0,0).freeze
  Y = Vector.new(0,1,0).freeze
  Z = Vector.new(0,0,1).freeze

end
require File.join( File.dirname(__FILE__), '..', 'lib',"coord3d" )

include Coord3d
describe Coord3d do

  describe Vector do

    it "should have x,y and z coordinates" do
      v = Vector.new
      [:x,:y,:z].each do |elem|
        v.should respond_to(elem)
      end
    end

    it "should have r,theta and phi coordinates" do
      v = Vector.new
      [:r,:theta,:phi].each do |elem|
        v.should respond_to(elem)
      end
    end

    it "should initialize with x,y,z coords" do
      v = Vector.new(-2,3,2)
      v.x.should == -2
      v.y.should == 3
      v.z.should == 2
    end

    it "should format to_s as <x,y,z>" do
      Vector.new(-2,3,2).to_s.should match(/\<\s*-?[\d\.]+\s*,\s*-?[\d\.]+\s*,\s*-?[\d\.]+\s*\>/)
    end

    #mostly for testing but may be useful in case statments
    it "should match an array with ===" do
      v = Vector.new(-2,3,2)
      v.should === [-2,3,2]
    end

    it "should add unit wise" do
      (X + Y + Z).should === [1,1,1]
    end

    it "should subtract unit wise" do
      (X - Y - Z).should === [1,-1,-1]
    end

    it "should negate" do
      (-X).should === [-1,0,0]
    end

    it "should return it's magnitud with ~" do
      (~Vector.new(3,4,0)).should == 5
    end

    it "should multiply by constant" do
      (X*3).should === [3,0,0]
    end

    it "should multiply by other vector (Dot product)" do
      (Vector.new(2,0,1) * Vector.new(1,0,3)).should == 5
    end

    it "should produce a unit vector" do
      (X*3).unit.should === [1.0,0,0]
    end

  end

  describe 'Constants' do
    it "X, Y, and Z should be unit vectors" do
      X.should === [1,0,0]
      Y.should === [0,1,0]
      Z.should === [0,0,1]
    end
  end
end

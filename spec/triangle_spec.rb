require('rspec')
require('triangle')

describe(Triangle) do
  describe("#triangle?") do
    it("returns false if the sum of two sides of the triangle is less than the third side") do
      test_triangle = Triangle.new(2,2,8)
      expect(test_triangle.triangle?()).to(eq(false))
    end
    it("returns true if the sum of two sides of the triangle is greater than the third side") do
      test_triangle = Triangle.new(2,2,3)
      expect(test_triangle.triangle?()).to(eq(true))
    end
  end

  describe("#equilateral?") do
    it("returns true if all sides are equal") do
      test_triangle = Triangle.new(2,2,2)
      expect(test_triangle.equilateral?()).to(eq(true))
    end
  end

  describe("#isosceles?") do
    it("returns true if any two sides are equal") do
      test_triangle = Triangle.new(2,3,2)
      expect(test_triangle.isosceles?()).to(eq(true))
    end
  end

  describe("#scalene?") do
    it("returns true if none of the sides are equal") do
      test_triangle = Triangle.new(2,5,3)
      expect(test_triangle.scalene?()).to(eq(true))
    end
  end
end

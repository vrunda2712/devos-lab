class Lab
  attr_reader :name

  def initialize
    @name = "Devo's Lab"
    @width = 10
    @height = 20
  end

  def less_than_zero?(num)
    if num < 0
      return true
    else
      return false
    end
  end

  def is_zero?(num)
    return false unless num.is_a?(Integer)
    if num == 0
      return true
    else
      return false
    end
  end

  def change_name(new_name)
    @name = new_name
  end

  def area
    return calculate_area
  end

  private
  def calculate_area
    return @width * @height
  end
end

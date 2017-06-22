require "minitest/autorun"
require_relative "lab"

class LabTest < MiniTest::Test
  def setup
    @lab = Lab.new
  end

  def test_initialize_sets_default_name
      assert @lab.name == "Devo's Lab"
  end

  def test_initialize_sets_non_default_name
      @lab = Lab.new(name: "test")
      assert @lab.name == "test"
  end

  def test_is_zero_returns_true
    assert @lab.is_zero?(0)
  end

  def test_is_zero_returns_false
    refute @lab.is_zero?(1)
  end

  def test_is_zero_returns_false_if_not_number
      refute @lab.is_zero?("foo")
  end

  def test_area_returns_area
    assert @lab.area == 200
  end

  def test_change_name
    @lab.change_name("test")
    assert @lab.name == "test"
  end

  def test_change_name_example_when_greater_than_10
    @lab.change_name_example("12345678901")
    assert @lab.name == "12345678901"
  end

  def test_change_name_example_when_less_than_10
    @lab.change_name_example("123456789")
    refute @lab.name == "123456789"
  end

end

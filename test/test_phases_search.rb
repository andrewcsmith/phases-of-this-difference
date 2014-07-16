require 'phases_search'

class TestPhasesSearch < Minitest::Test
  def setup
    @phases_search = PhasesSearch.new starting_point, tuneable_intervals
  end

  def test_phases_search_not_nil
    refute_nil @phases_search
  end

  def test_get_adjacent_points
    @phases_search.current_point = MM::Ratio.from_s(%w(1/1 3/2 5/4))
    @phases_search.tuneable = MM::Ratio.from_s(%w(3/2 6/5))
    adjacent_points = @phases_search.get_adjacent_points
    [
      MM::Ratio.from_s(%w(1/1 2/3 5/9)),
      MM::Ratio.from_s(%w(1/1 5/6 25/36)),
      MM::Ratio.from_s(%w(1/1 3/2 1/1)),
      MM::Ratio.from_s(%w(1/1 3/2 5/4))
    ].each do |exp|
      assert_includes adjacent_points, exp
    end
    assert_equal 4, adjacent_points.size
  end

  def starting_point
    @starting_point ||= MM::Ratio.from_s("1/1 3/2 5/4")
  end

  def tuneable_intervals
    @tuneable_intervals ||= MM::Ratio.from_s("3/2 5/4")
  end
end


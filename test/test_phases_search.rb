require 'phases_search'

class TestPhasesSearch < Minitest::Test
  def setup
    @phases_search = PhasesSearch.new
  end

  def test_phases_search_not_nil
    refute_nil @phases_search
  end

  def test_tuneable_initializes_with_array
    @phases_search = PhasesSearch.new(:tuneable => MM::Ratio.from_s(%w(3/2 6/5)))
    assert_equal MM::Ratio.from_s(%w(3/2 6/5)), @phases_search.tuneable
  end

  def test_tuneable_initializes_with_file
    # Set up the mock file object
    tuneable_file = Minitest::Mock.new
    tuneable_file.expect :read, <<-EOF
    - 3/2
    - 6/5
    EOF
    @phases_search = PhasesSearch.new(:tuneable => tuneable_file)
    assert_equal MM::Ratio.from_s(%w(3/2 6/5)), @phases_search.tuneable
    tuneable_file.verify
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
end


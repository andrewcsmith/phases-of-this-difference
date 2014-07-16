require 'phases_space'

class TestPhasesSpace < Minitest::Test
  def setup
    @tuneable_intervals = MM::Ratio.from_s("1/1 3/2 5/4")
    @ps = PhasesSpace.new @tuneable_intervals
  end

  def test_phases_space_initializes
    refute_nil @ps
    assert_equal @tuneable_intervals, @ps.tuneable
  end

  def test_boundaries_accessible
    refute_nil @ps.boundaries
  end

  def test_phases_space_infers_lower_boundaries
    exp = MM::Ratio.from_s("1/1 1/1")
    assert_equal exp, @ps.boundaries[0][0]
    assert_equal exp, @ps.boundaries[1][0] 
  end

  def test_phases_space_infers_upper_boundary_hd
    exp = MM::Ratio.from_s("1/1 4/5")
    assert_equal exp, @ps.boundaries[0][1]
  end

  def test_phases_space_infers_upper_boundary_log
    exp = MM::Ratio.from_s("1/1 2/3")
    assert_equal exp, @ps.boundaries[1][1]
  end

  def test_tuneable_initializes_with_array
    @ps = PhasesSpace.new MM::Ratio.from_s(%w(3/2 6/5))
    assert_equal MM::Ratio.from_s(%w(3/2 6/5)), @ps.tuneable
  end

  def test_tuneable_initializes_with_file
    # Set up the mock file object
    tuneable_file = Minitest::Mock.new
    tuneable_file.expect :read, <<-EOF
    - 3/2
    - 6/5
    EOF
    @ps = PhasesSpace.new tuneable_file
    assert_equal MM::Ratio.from_s(%w(3/2 6/5)), @ps.tuneable
    tuneable_file.verify
  end

  def test_scales_both_sides_of_starting_point
  end

  def test_properly_polarizes_directions
  end
end


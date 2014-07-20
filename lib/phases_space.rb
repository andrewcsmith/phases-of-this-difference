require 'mm/space'
require 'phases_search'

class PhasesSpace < MM::Space
  def initialize tuneable
    x = MM::Metric.olm intra_delta: :tenney, inter_delta: :abs
    y = MM::Metric.olm intra_delta: :log_ratio, inter_delta: :abs
    @metric = [x, y]
    super @metric
    self.tuneable = tuneable
    self.boundaries = infer_boundaries 
  end

  attr_reader :tuneable

  def morph start_morph, to: nil 
    search = PhasesSearch.new start_morph, @tuneable
    # Reset the boundaries to the length of the start morph
    self.boundaries = infer_boundaries(start_morph.length)
    # Normalize the distance to between 0.0 and 1.0
    to = normalize_distance start_morph, to
    search.cost_function = cost_function start_morph, to
    search.delta = @delta
    search.find
  end

  def lowest_point length
    1.upto(length).map { MM::Ratio.new(1,1) }
  end

  def tuneable= tuneable
    if tuneable.respond_to? :read
      @tuneable = MM::Ratio.from_yaml tuneable.read
    else
      @tuneable = tuneable
    end
  end

  # Given a distance vector (one dimension for each metric) and a starting
  # point, it normalizes the distance so that the distance from the starting
  # point to each boundary is 1.0.
  #
  # starting_point - Array of ratios that are considered to be the "center" in
  #   the given space.
  # distance - Array of distances, where each distance corresponds with a metric
  #   in the space.
  #
  # Returns an Array of normalized distances.
  def normalize_distance starting_point, distance
    distance = @metric.zip(infer_boundaries(starting_point.length), distance).map { |x|
      edge = select_edge(x[1], x[2])
      x[0].call(starting_point, edge) * x[2]
    }
  end

  private

  def select_edge boundaries, distance
    distance > 0 ? boundaries[1] : boundaries[0]
  end

  # More complicated than it needs to be. Basically, it infers the boundaries
  # based on the OLM metrics.
  def infer_boundaries length = 2
    lowest = lowest_point(length)
    @metric.map {|m|
      new = @tuneable.sort_by {|r|
        m.call(lowest, MM::Ratio.change_interval(lowest, 0, r))
      }.last
      highest = lowest.dup
      (0...length-1).to_a.each do |i|
        if i.even?
          highest = MM::Ratio.change_interval(highest, i, new)
        else
          highest = MM::Ratio.change_interval(highest, i, new.reciprocal)
        end
      end
      [lowest, highest]
    }
  end
end


require 'mm'

class PhasesSearch < MM::Search
  VERSION = "1.0.0"

  def initialize starting_point, tuneable, delta = 0.001
    @tuneable = tuneable
    super starting_point, delta
  end

  attr_accessor :current_point, :tuneable

  def get_adjacent_points *args
    (0...@current_point.size-1).to_a
      .product(@tuneable) # Every index with every interval
      .inject([]) { |memo, index_interval|
        # Inject the changed points into an Array
        memo << MM::Ratio.change_interval(@current_point, *index_interval)
      }
  end
end


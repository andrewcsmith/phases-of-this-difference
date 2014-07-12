require 'mm'

class PhasesSearch < MM::Search
  VERSION = "1.0.0"

  def initialize opts = {}
    self.tuneable = opts[:tuneable]
    x = MM::Metric.olm intra_delta: :tenney, inter_delta: :abs
    y = MM::Metric.olm intra_delta: :log_ratio, inter_delta: :abs
    super [x, y]
  end

  attr_accessor :current_point
  attr_reader :tuneable

  def tuneable= tuneable
    if tuneable.respond_to? :read
      @tuneable = MM::Ratio.from_yaml tuneable.read
    else
      @tuneable = tuneable
    end
  end

  def get_adjacent_points
    (0...@current_point.size-1).to_a
      .product(@tuneable)
      .inject([]) { |memo, index_interval|
        memo << MM::Ratio.change_interval(@current_point, *index_interval)
      }
  end
end


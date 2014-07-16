require 'mm/space'

class PhasesSpace < MM::Space
  def initialize tuneable
    x = MM::Metric.olm intra_delta: :tenney, inter_delta: :abs
    y = MM::Metric.olm intra_delta: :log_ratio, inter_delta: :abs
    @metrics = [x, y]
    super @metrics
    self.tuneable = tuneable
    b = infer_boundaries
    self.boundaries = b
  end

  attr_reader :tuneable

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

  private

  def infer_boundaries length = 2
    lowest = lowest_point(length)
    @metrics.map {|m|
      new = @tuneable.sort_by {|r| m.call(lowest, MM::Ratio.change_interval(lowest, 0, r))}.last
      [lowest, MM::Ratio.change_interval(lowest, 0, new)]
    }
  end
end


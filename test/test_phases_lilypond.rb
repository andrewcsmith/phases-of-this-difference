require 'minitest/autorun'
require 'phases_lilypond'

class TestPhasesLilypond < Minitest::Test
  def setup
    @pl = PhasesLilypond.new
  end

  def test_sanity
    refute_nil @pl
  end

  def test_separate_notes
    note_array = MM::Ratio.from_s('1/1 3/2 5/4')
    exp = ['d1*1/1 ~ d1*2/3 fsharpDf1*4/5', 'r1 a1*2/3 ~ a1*4/5']
    assert_equal exp, @pl.separate_notes(note_array)
  end
end

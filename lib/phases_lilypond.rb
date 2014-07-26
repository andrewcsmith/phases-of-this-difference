require 'mm/lilypond'

class PhasesLilypond < MM::Lilypond
  def separate_notes note_array
    violin_1 = note_array.each_slice(2).map {|n|
      s = full_note(n[0])
      unless n[1].nil?
        s << ' ~ ' << get_pitch(n[0]) << get_duration(n[1])
      end
      s
    }.join(' ')
    violin_2 = 'r1 ' + note_array[1...note_array.size].each_slice(2).map {|n|
      unless n[1].nil?
        s = full_note(n[0]) << ' ~ ' << get_pitch(n[0]) << get_duration(n[1])
      else
        s = 'r' << get_duration(n[0])
      end
    }.join(' ')
    [violin_1, violin_2]
  end
end

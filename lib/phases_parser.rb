# Script to open up the richland_phases file and parse it into stuff.

require 'mm'

# richland = File.open "richland_phases.txt", "r"

vectors = []
d_pattern = /[-\.\d]*/

File.open("richland_phases.txt", "r").each do |line|
  case
  when line =~ /to: \[(#{d_pattern}), (#{d_pattern})\]/
    vectors << {:x_dist => $1.to_f, :y_dist => $2.to_f} 
  else
    vectors.last[:vector] = MM::Ratio.from_s line
  end
end

VECTORS = vectors


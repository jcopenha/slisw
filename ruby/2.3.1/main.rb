values = [ 1,  2,  3,  4,
           5,  6,  7,  8,
           9, 10, 11, 12,
          13, 14, 15, 16]

values[0..3].each {|a| print "#{a} " }
puts
values[4..7].each {|a| print "#{a} " }
puts
values[8..11].each {|a| print "#{a} " }
puts
values[12..15].each {|a| print "#{a} " }
puts

require "enumerator"
(1..16).each_slice(4) {|a| p a }

# simple grep of files

re = Regexp.compile(ARGV[0])
file = File.new(ARGV[1], "r")
x = 0
file.each_line do |line|
    puts "#{x}: #{line}" if line =~ re
    x += 1
end

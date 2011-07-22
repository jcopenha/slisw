# simple grep of files

re = Regexp.compile(ARGV[0])
file = File.new(ARGV[1], "r")
file.each_line do |line|
    puts line if line =~ re
end

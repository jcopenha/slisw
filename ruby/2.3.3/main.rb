# simple grep of files

re = Regexp.compile(ARGV[0])
file = File.new(ARGV[1], "r")
x = 0
file.each_with_index do |line,counter|
    puts "#{counter+1}: #{line}" if line =~ re
    x += 1
end

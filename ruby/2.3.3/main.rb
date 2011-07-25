# simple grep of files

re = Regexp.compile(ARGV[0])
file = File.new(ARGV[1], "r")
file.each_with_index do |line,counter|
    puts "#{counter+1}: #{line}" if line =~ re
end

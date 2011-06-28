max = 100
target = rand(max)
guess = target + 1
puts "Pick a number between 0 and #{max}"
while guess != target
    guess = Integer(gets)
    if guess == target
        puts "correct!"
    elsif guess < target
        puts "Guess higher!"
    else
        puts "Guess lower!"
    end
end

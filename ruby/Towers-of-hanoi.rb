towers = {
  1 => [],
  2 => [],
  3 => []
}

puts "How many discs would you like to start with"
discs = gets.chomp.to_i

towers[1] = (1..discs).to_a.reverse
final = towers[1].dup

count = 0

while true
  puts "Here is how the game looks like right now:"
  towers.each { |tower_number, tower| puts "Tower #{tower_number}: #{tower}" }

  puts "Select what tower you want to choose the disc from"
  select = gets.chomp.to_i

  puts "Select what tower you want to place the disc on"
  destination = gets.chomp.to_i

  if !towers.include?(select) || !towers.include?(destination)
    puts "No such tower. Make sure you pick the right tower #."
  elsif select == destination
    puts "Oops! You can't put the disc where you picked it from."
  end

  select = towers[select]
  destination = towers[destination]

  if destination.none? || select.last < destination.last
    destination << select.pop
    count += 1
  else
    puts "Invalid move. You can't put a bigger disc on top of a smaller disc."
    puts "Give it another try\n"
  end

  if towers[2] == final || towers[3] == final
    puts "Awesome! You just solved the Tower of Hanoi in #{count} steps"
    break
  end
end

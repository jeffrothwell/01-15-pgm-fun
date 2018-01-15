require 'pp'

ballots = [{1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
           {1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
           {1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
           {1 =>'Boots', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}]

tallies = {}

candidates_array = []

ballots.each do |ballot|
  ballot.values.each do |candidate|
    candidates_array << candidate
  end
end

candidates_array.uniq!

candidates_array.each do |candidate|
  tallies[candidate] = 0
end

ballots.each do |ballot|
  ballot.each do |rank, candidate|
    tallies[candidate] += 4 - rank
  end
end

pp tallies

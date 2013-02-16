characters = Hash.new(0)
File.readlines('problem2.txt').first.each_char do |c|
  characters[c] += 1
end

puts characters.reject { |k, v| v > 1 }.keys.join

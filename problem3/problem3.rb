File.readlines('problem3.txt').each do |line|
  matches = line.scan(/[a-z][A-Z]{3}[a-z][A-Z]{3}[a-z]/)
  puts matches.to_s if matches.any?
end

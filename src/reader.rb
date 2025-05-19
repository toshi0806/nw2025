file = File.open "sample.txt", "r"

while line = file.gets&.chomp
  pp line
end

file.close

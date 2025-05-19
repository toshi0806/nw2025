#
# reader.rb の各行を１行づつ画面に表示
# 
File.open "reader.rb", "r" do |file|

  while line = file.gets&.chomp
    puts line
  end

end
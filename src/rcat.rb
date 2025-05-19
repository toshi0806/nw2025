#
# コマンドラインで指定した全てのファイルの各行を１行づつ画面に表示
# ruby rcat.rb a.txt b.txt c.rb

ARGV.each do |arg|
  File.open arg, "r" do |file|
    while line = file.gets&.chomp
      puts line
    end 
  end
end


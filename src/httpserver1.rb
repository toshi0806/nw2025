#! /usr/bin/ruby
require 'socket'

# 次はHTTP/1.0 対応するよ

s0 = TCPServer.open(80)
loop do
    sock = s0.accept
    Thread.new do
        line = sock.gets&.chomp
        _cmd,path,_ver = line.split
        case path
        when "/93"
            sock.puts "HTTP/1.0 301 OK"
            sock.puts "Location: http://www.kyusan-u.ac.jp/"
            sock.puts
        when "/hello"
            sock.puts "HTTP/1.0 200 OK"
            sock.puts
            sock.puts "Hello, world!"
        else
            path = "./#{path}"
            if File.exist? path
                sock.puts "HTTP/1.0 200 OK"
                sock.puts "Content-Type: text/plain; charset=UTF-8"
                sock.puts
                File.open path, "r" do |file|
                    while fl = file.gets&.chomp
                        sock.puts fl
                    end
                end
            else
                sock.puts "HTTP/1.0 404 Not Found"
                sock.puts
            end
        end
        sock.close
    end
end

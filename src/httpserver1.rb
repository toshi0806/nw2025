#! /usr/bin/ruby
require 'socket'

s0 = TCPServer.open(80)
loop do
    sock = s0.accept
    Thread.new do
        while line=sock.gets&.chomp
            pp line
            sock.puts line
            break if line.empty?
        end
        sock.close
        sleep 60
    end
end

require 'socket'

puts 'Kubia server starting...'
server = TCPServer.new(8080)

loop do
  socket = server.accept
  request = socket.gets

  puts "Received request from #{socket.peeraddr[3]}"

  response = "You've hit #{Socket.gethostname}\n"

  socket.print "HTTP/1.1 200 OK\r\n" +
               "Content-Type: text/plain\r\n" +
               "Content-Length: #{response.bytesize}\r\n" +
               "Connection: close\r\n"

  socket.print "\r\n"

  socket.print response

  socket.close
end

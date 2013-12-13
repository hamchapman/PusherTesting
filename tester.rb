require 'pusher-client'

options = {:secret => 'da6df554f835d0121657'} 
socket = PusherClient::Socket.new('26f4232b489d7c8a2e22', options)

# Subscribe to two channels
socket.subscribe('channel1')

socket['channel1'].bind('newmsg') do |data|
  puts 'Foo'
  puts data
end

socket.connect
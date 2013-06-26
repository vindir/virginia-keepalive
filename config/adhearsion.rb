# encoding: utf-8

Adhearsion.config do |config|

  config.development do |dev|
    dev.platform.logging.level = :fatal
  end

  config.punchblock.platform = :asterisk # Use Asterisk
  config.punchblock.username = "" # Your AMI username
  config.punchblock.password = "" # Your AMI password
  config.punchblock.host = "127.0.0.1" # Your AMI host

  config.virginia.handler = StatsHandler
  config.virginia.port = 5005
end

Adhearsion::Events.draw do

  # Register global handlers for events
  #
  # eg. Handling Punchblock events
  # punchblock do |event|
  #   ...
  # end
  #
  # eg Handling PeerStatus AMI events
  # ami :name => 'PeerStatus' do |event|
  #   ...
  # end
  #
end

Adhearsion.router do

  #
  # Specify your call routes, directing calls with particular attributes to a controller
  #

  route 'default', SimonGame
end

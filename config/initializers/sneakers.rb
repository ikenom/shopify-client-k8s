# config/initializers/sneakers.rb
require 'sneakers'

host = ENV["#{ENV["RELEASE_NAME"].upcase}_RABBITMQ_SERVICE_HOST"]
port = ENV["#{ENV["RELEASE_NAME"].upcase}_RABBITMQ_SERVICE_PORT_AMQP"]
username = ENV["RABBITMQ_USERNAME"]
password = ENV["RABBITMQ_PASSWORD"]

Sneakers.configure  :heartbeat => 30,
                    :amqp => "amqp://#{username}:#{password}@#{host}:#{port}",
                    :vhost => '/',
                    :exchange => 'sneakers',
                    :exchange_type => :direct
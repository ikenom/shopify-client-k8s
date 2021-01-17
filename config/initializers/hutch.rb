host = ENV["#{ENV["RELEASE_NAME"].upcase}_RABBITMQ_SERVICE_HOST"]
port = ENV["#{ENV["RELEASE_NAME"].upcase}_RABBITMQ_SERVICE_PORT_AMQP"]
api_port = ENV["#{ENV["RELEASE_NAME"].upcase}_RABBITMQ_SERVICE_PORT_HTTP_STATS"]

Hutch::Config.set(:force_publisher_confirms, true)

Hutch::Config.set(:mq_host, host)
Hutch::Config.set(:mq_api_host, host)

Hutch::Config.set(:mq_port, port)
Hutch::Config.set(:mq_api_port, api_port)

Hutch::Config.set(:mq_username, ENV["RABBITMQ_USERNAME"])
Hutch::Config.set(:mq_password, ENV["RABBITMQ_PASSWORD"])
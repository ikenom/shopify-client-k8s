class MongoidUriBuilder
  def self.build(database_name:)
    host = ENV["#{ENV["RELEASE_NAME"].upcase}_MONGODB_SERVICE_HOST"]
    port = ENV["#{ENV["RELEASE_NAME"].upcase}_MONGODB_SERVICE_PORT"]

    "mongodb://#{host}:#{port}/#{database_name}"
  end
end

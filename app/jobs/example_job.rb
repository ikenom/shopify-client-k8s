class ExampleJob < ApplicationJob
  # Set the Queue as Default
  queue_as :default

  def perform(*args)
    Test.create!
  end
end
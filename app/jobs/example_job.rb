class ExampleJob < ApplicationJob
  # Set the Queue as Default
  queue_as :default

  def perform(*args)
    Test.create!
    pp "hit"
  end
end
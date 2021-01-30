class TestJob < ApplicationJob
  # Set the Queue as Default
  queue_as :default

  def perform(*args)
    Test.create!
    pp "Ikenna Omekam"
  end
end
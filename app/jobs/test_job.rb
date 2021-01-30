# frozen_string_literal: true

class TestJob < ApplicationJob
  # Set the Queue as Default
  queue_as :default

  def perform(*_args)
    Test.create!
    pp "Ikenna Omekam"
  end
end

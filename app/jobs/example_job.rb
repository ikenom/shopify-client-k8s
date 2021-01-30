# frozen_string_literal: true

class ExampleJob < ApplicationJob
  # Set the Queue as Default
  queue_as :default

  def perform(*_args)
    Test.create!
    Rails.logger.info "Ikenna Omekam"
  end
end

# frozen_string_literal: true

class TestConsumer
  include Hutch::Consumer
  consume "ikenna.test"

  def process(_message)
    pp "Ikenna Omekam"
  end
end

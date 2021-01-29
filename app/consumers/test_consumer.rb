class TestConsumer
  include Hutch::Consumer
  consume 'ikenna.test'

  def process(message)
    pp "Ikenna Omekam"
  end
end
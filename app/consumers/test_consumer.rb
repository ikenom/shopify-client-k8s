class TestConsumer
  include Hutch::Consumer
  consume 'ikenna.test'

  def process(message)
    ExampleJob.perform_later
  end
end
class LoggingJob
  include Sidekiq::Worker

  def perform
    task = GenericTask.new
    task.do_something
  end
end

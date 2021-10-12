class HomeController < ApplicationController
  def index
  end

  def do_sync
    task = GenericTask.new
    task.do_something

    redirect_to action: :index
  end

  def do_async
    LoggingJob.perform_async

    redirect_to action: :index
  end
end

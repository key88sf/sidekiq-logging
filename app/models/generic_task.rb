class GenericTask
  def do_something
    Rails.logger.warn("STARTING generic task.")
    # ... code to do stuff here
    Rails.logger.warn("FINISHED generic task.")
  end
end

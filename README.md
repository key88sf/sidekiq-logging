# Sidekiq Logging Example

## To Run:
* Start rails server: `rails s`
* Start sidekiq: `sidekiq`
* Go to `http://localhost:3000`

## Usage:
* Click on "Do Sync Job" link to run the generic logging task synchronously.
* Click on "Do Async Job" link to run the same generic logging task asynchronously via Sidekiq.

## Expected/Ideal Logging Output:
* Ideally, the `Rails.logger.warn` statements from the generic logging task would appear in the same places, regardless of whether they are run sychronously or async via Sidekiq.

## Actual Logging Output:

#### Sync Task:
* Rails server terminal console window shows logging statements.
* `development.log` file shows logging statements.

#### Async Task:
* Sidekiq terminal console window does *NOT* show logging statements.
* `development.log` file shows logging statements.


## Files of interest
* app/models/generic_task.rb ==> This is the PORO object with the `Rails.logger.warn` statements.
* app/jobs/logging_job.rb ==> Sidekiq job class the just runs the GenericTask above.
* app/controllers/home_controller.rb ==> Simple controller to run the GenericTask either sychronously or async via Sidekiq.

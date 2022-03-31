class TestRunJob < ApplicationJob
  queue_as :default

  def perform(user)
   puts "updated data"
  end
end

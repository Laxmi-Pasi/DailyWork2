class GenerateRandomUserJob < ApplicationJob
    queue_as :default
  
    def perform(user)
      puts user.first_name
      puts user.email
    end
  end
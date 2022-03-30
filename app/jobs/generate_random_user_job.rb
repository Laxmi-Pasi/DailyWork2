class GenerateRandomUserJob < ApplicationJob
    queue_as :default
  
    def perform(user)
        
        binding.pry
        
      user.save!
      puts "--------------------------------------------"
    end
  end
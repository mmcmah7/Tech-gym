module ApplicationHelper
	def suggest
		
    	@suggestions = []
      	  User.where.not(id: current_user.id).each do |user|
        unless current_user.following.include?(user.id) 
          @suggestions.push(user)
          @suggestions.shuffle!
        end
        
     	end
		
	end
end

module ApplicationHelper
	def suggest
		
    	@suggestions = []

      	User.all.each do |user|
        unless current_user.following.include?(user.id) 
          @suggestions.push(user)
          @suggestions.shuffle!
        end
        
     	end
		
	end
end

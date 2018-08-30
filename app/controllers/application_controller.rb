class ApplicationController < ActionController::Base
	before_action :categories
	before_action :configure_permitted_parameters, if: :devise_controller?

	

		
	def categories
  	@categories = Category.order(:name)
	end

	protected

	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :username, :bio, :location, :avatar, :following])
		
		devise_parameter_sanitizer.permit(:account_update, keys: [:name, :username, :bio, :location, :avatar, :following])
	end
end

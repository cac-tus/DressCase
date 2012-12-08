class ApplicationController < ActionController::Base
	protect_from_forgery

	def after_sign_in_path_for(resource)

		if current_user.type
			actress_index_path		
		else
			 {:controller => "users/choice_type" , :action => "choice_type"} 
		end

 	end

end

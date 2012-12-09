##app /controllers/users/choice_type_controller.rb

class Users::ChoiceTypeController < ApplicationController 
	
	def choice_type
	    if(current_user)
	      @user = current_user
	    else
	      @user = nil;
	    end
	end

end

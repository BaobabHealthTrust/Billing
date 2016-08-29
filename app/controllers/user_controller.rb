class UserController < ApplicationController
	def new
		@roles = UserRole.all

	end
	def show

	end

	# create new user
	def create
		# set parameter values to variables
		username                = params[:username]
		password                = params[:password]
		password_confirmation   = params[:password_confirmation]
		role_id                 = params[:user_role_id]

		# check if password & password confirmation
		if password == password_confirmation
			user_role_id = UserRole.find(role_id).id
			new_user = User.new(username: username, password: password,
			                    password_confirmation: password_confirmation, user_role_id: user_role_id)
			if new_user.valid?
				new_user.save
				redirect_to '/' # redirect to Dashboard if successfully created new user.
			else

			end
		else

		end
	end
end

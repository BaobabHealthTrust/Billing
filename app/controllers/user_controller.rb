class UserController < ApplicationController
	def new

	end
	def show

	end

	# create new user
	def create
		# set parameter values to variables
		username                = params[:username]
		password                = params[:password]
		password_confirmation   = params[:password_confirmation]

		# check if password & password confirmation
		if password == password_confirmation
			new_user = User.new(username: username, password: password, password_confirmation: password_confirmation)
			if new_user.valid?
				new_user.save
				redirect_to '/' # redirect to Dashboard if successfully created new user.
			else

			end
		else

		end
	end
end

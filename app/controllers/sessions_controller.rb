class SessionsController < ApplicationController
	def new
		if logged_in?
			raise 'already logged in'
		end
	end

	def create
		user = User.find_by(username: params[:session][:username])
		if user && user.authenticate(params[:session][:password])
			# login & redirect to landing page
			log_in user
			redirect_to '/login'
		else
			# redirect to login with an error message
			render 'new'
		end
	end

	def destroy
		log_out
		# redirect_to redirect to possibly root
	end
end

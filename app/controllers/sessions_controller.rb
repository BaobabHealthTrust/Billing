class SessionsController < ApplicationController
	def new
	end

	def create
		user = User.find_by(username: params[:session][:username])
		if user && user.authenticate(params[:session][:password])
			# login & redirect to landing page
			raise 'logged in'
		else
			# redirect to login with an error message
			render 'new'
		end
	end

	def destroy

	end
end

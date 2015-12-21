class SessionController < ApplicationController
	def new
		
	end

	def create
		@user = User.where("email=?",params[:email]).last
		if @user and @user.password_digest == params[:password]
			session[:user_id] = @user.id
			redirect_to entries_path, notice: "Logged in!!"
		else
			redirect_to new_session_path, notice: "Invalide credentials"
		end
	end

	def destroy
		session[:user_id] = nil
		reset_session
		redirect_to entries_path, notice: "Logged out!!"
	end
end

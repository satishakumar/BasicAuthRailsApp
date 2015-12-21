class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.create(:name => params[:user][:name], :email => params[:user][:email], :password_digest => params[:user][:password_digest])
		session[:user_id] = @user.id
		redirect_to :controller => "entries", :action => "index", notice: "Registered User"
	end
end

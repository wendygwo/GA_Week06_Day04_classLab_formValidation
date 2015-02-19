class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(params.require(:user).permit(:name, :email))
  	if @user.save
  		redirect_to users_path
  	else
  		# redirect_to new_user_path
  		render 'new'
  		# return false
  	end
  end
end

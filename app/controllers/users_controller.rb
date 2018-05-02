class UsersController < ApplicationController
  before_action :authenticate_user!

def edit
  @user = current_user
end

def update_password
  @user = current_user
  if @user.update(user_params)
    # Sign in the user by passing validation in case their password changed
    bypass_sign_in(@user)
    redirect_to admin_path
  else
    render "edit"
  end
end

private

def user_params
  # NOTE: Using `strong_parameters` gem
  params.require(:user).permit(:password, :password_confirmation)
end
end

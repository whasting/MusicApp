class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      #login(@user)
      redirect_to user_url(@user)
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_url
    end
  end

  def show
    if current_user
      render @user
    else
      redirect_to new_user_url
    end
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:email, :password)
  end
end

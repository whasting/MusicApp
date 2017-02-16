class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by_credentials(session_params)
    if @user
      #login(@user)
      redirect_to user_url
    else
      flash[:errors] = ["Invalid credentials"]
      redirect_to new_session_url
    end
  end

  def destroy
    current_user.session_token = nil
  end

  private
  def session_params
    params.require(:session).permit(:email, :password)
  end
end

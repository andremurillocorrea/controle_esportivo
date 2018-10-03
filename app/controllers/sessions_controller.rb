class SessionsController < ApplicationController
  # before_action :block_access, except: [:destroy]
  
  def create
    @user = User.find_by(email: params[:session][:email].downcase)

    if (@user && (@user.pwd == (params[:session][:pwd])))
      sign_in
      redirect_to @user
    else
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end

end

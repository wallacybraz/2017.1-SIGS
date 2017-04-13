class SessionsController < ApplicationController
  before_action :block_access, except: [:destroy]
  def new
<<<<<<< cd5ae27879be129f7005e4cff92ff80fd9606272
    render 'new'
  end

  def create
    @user = User.find_by(email: params[:session][:email].downcase)
      if @user && @user.authenticate(params[:session][:password])
        sign_in(user)
        redirect_to current_user , notice: 'Login realizado com sucesso'
      else
        flash.now[:notice] = 'Email ou senha inválidos'
        render 'new'
      end
  end

  def destroy
    sign_out
    redirect_to root_url
=======
    render "new"
  end

  def create
    user = User.find_by(email: params[:session][:email])
      if user && user.authenticate(params[:session][:password])
        sign_in(user)
  end

  def destroy
>>>>>>> Implemented view session#new
  end
end

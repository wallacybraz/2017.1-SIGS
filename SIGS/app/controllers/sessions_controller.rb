class SessionsController < ApplicationController
  before_action :block_access, except: [:destroy]
  def new
<<<<<<< 4df501e072cdadab8f1371750a8372ee78debe17
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
=======
>>>>>>> Implement methods in helper of sessions
  end

  def create
    user = User.find_by(email: params[:session][:email])
      if user && user.authenticate(params[:session][:password])
        sign_in(user)
        redirect_to current_user
      else
        render 'new'
      end
  end

  def destroy
>>>>>>> Implemented view session#new
  end
end

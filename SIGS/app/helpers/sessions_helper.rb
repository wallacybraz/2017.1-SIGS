module SessionsHelper
  def sign_in(user)
    session[:user_id] = user.id
<<<<<<< 30dfdc8861a810a47d3711ebe320965239e6c00b
    if user.Coordinator?
      @nvl = 2
    end
    if user.Department_assitant?
      @nvl = 2
    end
    if user.Administrative_assistant?
      @nvl = 1
    end
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def block_access
    if current_user.present?
      redirect_to current_user
    end
  end
  def permission
    permission ||= @nvl
  end
  def logged_in?
      !current_user.nil?
  end

  def sign_out
    session.delete(:user_id)
    @current_user = nil
=======
>>>>>>> Implemented method sessions#createand sign_in in helper of session
  end
end

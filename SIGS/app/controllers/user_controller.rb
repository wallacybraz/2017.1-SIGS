class UserController < ApplicationController
  before_action :logged_in?, except: [:new,:create,:user_params]
  def new
		@user = User.new
    @user.build_department_assistant
    @user.build_coordinator
	end

  def show
      @user = User.find(params[:id])
  end

  #Creating a new user
  def create
  	@user = User.new(user_params)
    if @user.save
      #usuario criado com sucesso
    end
  end

  # Editing the user profile
  def edit
    @user = User.find(params[:id])
    #if @user != current_user
    #end
  end

  #Update User
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = t(:sucessful_profile_update)
      # Mandar para Show do tipo de usuário
    else
      redirect_to user_edit_path
      flash[:warning] = t(:error_profile_update)
    end
  end


  def user_params
    params[:user].permit(:name, :email, :password,:registration, :cpf, :active,
                          :department_assistant_attributes => [:department_id,:user_id],
                          :coordinator_attributes =>[:course_id,:user_id])




  end
end

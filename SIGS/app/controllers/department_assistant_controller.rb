class DepartmentAssistantController < ApplicationController


  

  def index
    @department_assistant = DepartmentAssistant.find(params[:id])
    @user = User.find(@department_assistant.user_id)
  end

  def show
    @department_assistant = DepartmentAssistant.find(params[:id])
    @user = User.find(@department_assistant.user_id)
    @department = Department.find(@department_assistant.department_id)
  end

  def destroy
    @department_assistant = DepartmentAssistant.find(params[:id])
    @user = User.find(@department_assistant.user_id)

    @department_assistants = DepartmentAssistant.all
    if @department_assistants.count > 1
      @department_assistant.destroy
      @user.destroy
      redirect_to destroy_path
    else
      redirect_to index_path(@department_assistant.id)
    end
  end

  private
  def department_assistant_params
    params[:department_assistant].permit(:user_id,:department_id)
end

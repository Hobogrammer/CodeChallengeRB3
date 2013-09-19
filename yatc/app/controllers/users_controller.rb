class UsersController < ApplicationController
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "User created."
      redirect_to root_path
    else
      flash[:error] = "User failed to save, try again"
      render 'new'
    end
  end

  def edit
    @user = User.find_by_id(params[:id])
  end

  def update
    @user = User.find_by_id(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "User information has been updated"
      redirect_to root_path
    else
      flash[:error] = "User information failed to update, please try again"
      render 'edit'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User has been deleted."
    redirect_to root_path
  end

  def show
    @user = User.find_by_id(params[:id])
  end

  def index
    @users = User.all
  end


private
  def user_params
    params.require(:user).permit(:handle,:first_name, :last_name, :email)
  end
end

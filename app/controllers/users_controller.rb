class UsersController < ApplicationController
  
  def index
    @users = User.all
  end

  
  def show
    @orders = @user.orders
  end

 
  def new
    @user = User.new
  end

  
  def edit
  end


  def create
    @user = User.new(user_params)
    @user.save
    redirect_to users_path
  end

  
  def update
    @user.update(user_params)
    redirect_to @user
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  
  def set_user
    @user = User.find(params[:id])
  end

  
  def user_params
    params.require(:user).permit(:first_name, :last_name, :age)
  end
end

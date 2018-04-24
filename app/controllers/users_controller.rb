class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def update
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to Parent Scrapbook!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.paginate(page: params[:page], per_page: 10)
  end
end

private
    def user_params
      params.require(:user).permit(:name, :email, :password, 
                                  :password_confirmation)
    end
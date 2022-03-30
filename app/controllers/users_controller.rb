class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    binding.pry
    GenerateRandomUserJob.perform_later(@user)
    # if @user.save
    #   redirect_to user_path(@user)
    # else
    #   flash[:errors] = @user.errors.full_messages
    #   redirect_to new_user_path
    # end
    redirect_to users_path
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      flash[:errors]=@user.errors.full_messages
      redirect_to edit_user_path
    end
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  private
    def set_user
      @user = User.find(params[:id])
    end
    
    def user_params
      params.require(:user).permit(:email, :first_name) 
    end
end

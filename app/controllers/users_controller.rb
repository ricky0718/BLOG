class UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])
  end

  def update
    if current_user.update(user_params)
      redirect_to user_path(current_user)
    else
      render :edit
    end
  end

  def show
    @user = User.find(params[:id])
    # @nickname = user.nickname
    @entrys = @user.entrys
    # @entrys = Entry.find(params[:id])
    
    # @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :email,:prefecture_id,:muscle,:muscle_training,:user_image,:introduce)
  end
end
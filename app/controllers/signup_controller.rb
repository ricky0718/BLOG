class SignupController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
      if @user.save!
        sign_in User.find(@user.id) unless user_signed_in?
        redirect_to root_path(@user.id)
      else
        render signup_index_path
      end
    end
  
    private
  
    def user_params
      params.require(:user).permit(
      :name, 
      :email, 
      :password,
      :password_confirmation,
      :prefecture_id,
      :muscle,
      :muscle_training
    )
    end
  end
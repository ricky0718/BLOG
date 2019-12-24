class UsersController < ApplicationController
  def show
    @entrys = current_user.entrys
    
    @user = User.find(params[:id])
  end
end
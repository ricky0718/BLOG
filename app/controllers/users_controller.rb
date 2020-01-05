class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    # @nickname = user.nickname
    @entrys = @user.entrys

    # @entrys = Entry.find(params[:id])
    
    # @user = User.find(params[:id])
  end
end
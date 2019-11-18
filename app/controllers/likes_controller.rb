class LikesController < ApplicationController
  def create
    @like = Like.create(user_id: current_user.id, entry_id: params[:entry_id])
    @likes = Like.where(entry_id: params[:entry_id])
    get_entry
  end

  def destroy
    @like = Like.find_by(user_id: current_user.id, entry_id: params[:entry_id])
    @like.destroy
    @likes = Like.where(entry_id: params[:entry_id])
    get_entry
  end

  def get_entry
    @entry = Entry.find(params[:entry_id])
  end
end

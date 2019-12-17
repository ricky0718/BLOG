class LikesController < ApplicationController
  def create
    @entry = Entry.find(params[:entry_id])
    unless @entry.iine?(current_user)
      @entry.iine(current_user)
      @entry.reload
      respond_to do |format|
        format.html { redirect_to request.referrer || root_url }
        format.js
      end
    end
  end

  def destroy
    @entry = Like.find(params[:id]).entry
    if @entry.iine?(current_user)
      @entry.uniine(current_user)
      @entry.reload
      respond_to do |format|
        format.html { redirect_to request.referrer || root_url }
        format.js
      end
    end
  end
end

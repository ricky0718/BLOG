class EntryController < ApplicationController
  def index
    @entries = Entry.includes(:user)
    @entries = Entry.all.order("created_at DESC")
    # @entry = Entry.find(params[:id])
    # @user = User.find(params[:user_id])

  end
  def new
    @entry = Entry.new
  end
  def create
    @entry = Entry.new(entry_params)
    if @entry.save
      redirect_to root_path
    else  
      render new_entry_path
    end
  end
  
  def show
    @entry = Entry.find(params[:id])
    @comment = Comment.new
    @comments = @entry.comments.includes(:user)
  end

  def muscle
    @all_ranks = Entry.find(Like.group(:entry_id).order('count(entry_id) desc').limit(9).pluck(:entry_id))
  end

  def edit
    @entry = Entry.find(params[:id])
  end

  def update
    @entry = Entry.find(params[:id])
    if @entry.update(entry_params)
      redirect_to root_path
    else  
      render :edit
    end
   
  end
  def destroy
    entry = Entry.find(params[:id])
    entry.destroy
    redirect_to root_path
  end
  private
  def entry_params
    params.require(:entry).permit(:title,:image,:text,category_ids: []).merge(user_id: current_user.id)
  end

end



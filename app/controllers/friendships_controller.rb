class FriendshipsController < ApplicationController

  respond_to :html, :json

  def index
    @users = current_user.friendships
    if params[:search]
      @users = User.search(params[:search]).order("name DESC")
    else
      @users = User.all.order('name DESC')
    end
    respond_with @users
  end

  def create
    @friendship = current_user.friendships.build(:friend_id => params[:friend_id])
    @friendship.save
    if @friendship.save
      flash[:notice] = "Added friend."
      redirect_to friendships_path
    else
      flash[:error] = "Unable to add friend."
    end
  end

  def show

  end

  def destroy

  end
end

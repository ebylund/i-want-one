class FriendshipsController < ApplicationController

  respond_to :html, :json

  def index
    @users = User.all
    if params[:search]
      @users = User.search(params[:search]).order("name DESC")
    else
      @users = User.all.order('name DESC')
    end
    respond_with @users
  end

  def create

  end

  def show

  end

  def destroy

  end
end

class UsersController < ApplicationController
  # before_filter :authenticate_user!
#    after_action :verify_authorized

  respond_to :html, :json

  def index
    @users = User.all
    if params[:search]
      @users = User.search(params[:search]).order("created_at DESC")
    else
      @users = User.all.order('created_at DESC')
    end
    respond_with @users
  end

  def show
      @user = User.find(params[:id])
      respond_with @user
  end

  def update

  end

  def destroy

  end

end

class StoresController < ApplicationController
 respond_to :html, :json
  def index
        @stores = Store.all
  end

    def show
         @store = Store.find(params[:id])
        respond_with @store
    end
end

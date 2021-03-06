class SellsController < ApplicationController
  before_action :sign_in_display, only: :index

    def index
        @sells = Sell.all.order('id DESC')
        @user = current_user
        @buys = Buy.where(user_id: current_user.id).order('id DESC')
    end

    def new
        @sell = Sell.new
        @sell.user_id = current_user.id
    end

    def create
        @sell = Sell.new(sell_params)
        @sell.save
        redirect_to "/"
    end

    def show
      @sell = Sell.find(params[:id])
    end
 
    def edit
      @sell = Sell.find(params[:id])
    end

    def update
      @sell = Sell.find(params[:id])
      @sell.update(sell_params__update)
      redirect_to "/"
    end

    def destroy
      @sell = Sell.find(params[:id])
      @sell.destroy
      redirect_to "/"
    end

    private
    def sell_params
      params.require(:sell).permit(:name, :image, :price).merge(user_id: params[:user_id])
    end

    def sell_params__update
      params.require(:sell).permit(:name, :image, :price)
    end

    def sign_in_display
      redirect_to "/users/sign_in" unless user_signed_in?
    end
end

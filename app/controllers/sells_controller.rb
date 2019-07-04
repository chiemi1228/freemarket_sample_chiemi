class SellsController < ApplicationController
    def index
        @sells = Sell.all.order('id DESC')
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

    private
    def sell_params
      params.require(:sell).permit(:name, :image, :price).merge(user_id: params[:user_id])
    end

    def sell_params__update
      params.require(:sell).permit(:name, :image, :price)
    end


end

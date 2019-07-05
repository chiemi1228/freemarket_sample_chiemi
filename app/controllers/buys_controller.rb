class BuysController < ApplicationController
  def new
    @buy = Buy.new(sell_id: params[:sell_id], user_id: params[:user_id])
    @sell = Sell.find(params[:sell_id])
    @buy.name = @sell.name
    @buy.image = @sell.image
    @buy.price = @sell.price
    @buy.save
    @sell.destroy
    redirect_to "/"
  end

  def index
    @buys = Buy.where(user_id: current_user.id)
  end
end

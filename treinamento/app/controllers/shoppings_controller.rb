class ShoppingsController < ApplicationController
  def index
    @shoppings = Shopping.all
  end

  def show
    @shoppings = Shopping.find(params[:id])
  end
end

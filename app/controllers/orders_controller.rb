class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new
    @order.title = params[:order][:title]
    @order.body = params[:order][:body]

    if @order.save

      flash[:notice] = "Your order has been posted"
      redirect_to @order
    else

      flash.now[:alert] = "There was an error posting the order. Please try again"
      render :new
    end
  end

  def edit
  end
end

class OrdersController < ApplicationController
  before_action :set_data, only: [:index, :done]
  
  def index
    @orders = Order.where(done: nil) # 要修正
    @flag = 'index'
  end
  
  def done
    @orders = Order.where(done: true) # 要修正
    @flag = 'done'
    render 'index'
  end
  
  def update
    order = Order.find_by(id: params[:id])
    order.update(done: true)
    redirect_to action: "index"
  end
    
  def new
    redirect_to root_path if current_cart.items.empty?
    @order = Order.new
  end
  
  def create
    @order = Order.new(order_params)
    @order.add_items(current_cart)
    if @order.save
      Cart.destroy(session[:cart_id])
      session[:cart_id] = nil
      redirect_to root_path
    else
      render :new
    end
  end
  
  
  private
  def order_params
    params.require(:order).permit(:name, :address, :email, :tel_number, :pay_type)
  end
  
  def set_data
    @items = Item.where('order_id > 0') # 要修正
    @products = Product.all # 要修正
  end
  
end
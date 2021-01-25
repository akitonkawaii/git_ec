class CartsController < ApplicationController
  before_action :set_item, only: [:create, :destroy]
  
  def index
    @items = current_cart.items
    @products = Product.select(:name, :price)
    
  end
  
  def create
    @item = current_cart.items.build(product_id: params[:id]) if @item.blank?
    @item.quantity += 1 #params[:quantity].to_i
    if @item.save!
      redirect_to action: "index"
    else
      flash[:notice] = @item
      redirect_to controller: "products", action: "show" 
    end
  end
  
  def destroy
    @item.destroy
    @items = current_cart.items
    @products = Product.select(:name, :price)
    redirect_to action: "index"
  end
  
  private

  def set_item
    @item = current_cart.items.find_by(product_id: params[:id])
  end
end


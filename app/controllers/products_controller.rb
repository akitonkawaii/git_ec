class ProductsController < ApplicationController

  def show
    @product = Product.find_by(url: params[:url])
  end
  
  def new
    
  end
  
  def create
    Product.create(product_params)
  end
  
  def edit
    @product = Product.find_by(id: params[:id])
  end
  
  def update
    product = Product.find_by(id: params[:id])
    product.update(product_params)
  end
  
  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
  end
  
  
  private
  def product_params
    params.permit(:name, :description, :price, :image, :url)
  end
  
end

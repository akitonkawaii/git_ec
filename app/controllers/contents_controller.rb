class ContentsController < ApplicationController
  def index
    @products = Product.all
  end
end

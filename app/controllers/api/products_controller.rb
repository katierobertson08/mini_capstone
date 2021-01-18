class Api::ProductsController < ApplicationController
  
  def index
    @products = Product.all
    @products = Product.all # returns array of product hashes
    render "index.json.jb"
  end

  def show
    @product = Product.first 
    render "index.json.jb"
  end

  def create 
    @product = Product.new(
    name: params[:name],
    price: params[:price],
    description: params[:description],
    )
    @product.save
    render "show.json.jb"
  end
end

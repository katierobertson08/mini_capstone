class Api::ProductsController < ApplicationController
  
  def index
    @products = Product.all
    @products = Product.all # returns array of product hashes
    render "index.json.jb"
  end

  def show
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    render "show.json.jb"
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

  def update
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description
    @product.save
  end

  def destroy
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    render json: {message: "Successfully deleted. Now check the server log"}
  end
end

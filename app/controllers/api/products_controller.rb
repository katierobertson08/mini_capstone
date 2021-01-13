class Api::ProductsController < ApplicationController
  def product_action
    @message = "sanity check"
    render "single_product.json.jb"
  end
end

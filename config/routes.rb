Rails.application.routes.draw do
  
  namespace :api do
    get "/product_path" => "products#product_action"
  end


end

Rails.application.routes.draw do
  
  namespace :api do
    get "/all_products_path" => "products#all_products_action"
    get "/first_product_path" => "products#first_product_action"

    get "/products" => "products#index"



    get "/products/:id" => "products#show"
    post "/products" => "products#create"
    patch "products/:id" => "products#update"
  end

end

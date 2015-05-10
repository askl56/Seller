Ecom::Engine.routes.draw do
  resources :categories

  devise_for :users, {
    :class_name => "Ecom::User",
    module: :devise
  }
  resources :products
  root to: "products#index"

  get "cart" => "cart#show"
  get "cart/add/:id" => "cart#add", :as => :add_to_cart
  post "cart/remove/:id" => "cart#remove", :as => :remove_from_cart
  post "cart/checkout" => "cart#checkout", :as => :checkout
end

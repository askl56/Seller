Ecom::Engine.routes.draw do
  get 'cart/show'

  devise_for :users, {
    class_name: "Ecom::User",
    module: :devise
    }
  resources :products
end

Ecom::Engine.routes.draw do
  devise_for :users, {
    class_name: "Ecom::User",
    module: :devise
    }
  resources :products
end

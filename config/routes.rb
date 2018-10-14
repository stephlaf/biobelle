Rails.application.routes.draw do
  devise_for :users
  root to: 'products#index'
  Rails.application.routes.draw do
    get "/pages/:page" => "pages#show"
  end
  resources :products, :distributeurs
  resources :pages, as: :pages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

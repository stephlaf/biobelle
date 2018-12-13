Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations"}
  root to: 'products#index'
  Rails.application.routes.draw do
    get "/pages/:page" => "pages#show"
  end
  resources :products, :distributeurs
  resources :pages, as: :pages
  get "/sitemap.xml" => "sitemaps#index", defaults: { format: "xml"}, as: :sitemap
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

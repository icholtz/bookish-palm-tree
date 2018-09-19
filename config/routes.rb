Rails.application.routes.draw do
  resources :umbrellas
  resources :orders, only: [:index, :show, :create, :destroy]

  get 'simple_pages/about'
  get 'simple_pages/contact'
  get 'simple_pages/index'
  get 'simple_pages/hello'
  root 'simple_pages#landing_page'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

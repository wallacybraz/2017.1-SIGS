Rails.application.routes.draw do
  get 'posts/index'
  get 'posts/show'
  roots ‘post#index’
  resources :post
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

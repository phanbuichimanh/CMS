Rails.application.routes.draw do
  get 'product_types/index'
  get 'product_types/show'
  get 'product_types/new'
  get 'product_types/create'
  get 'product_types/edit'
  get 'product_types/update'
  get 'product_types/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do
    resources :categories
  end

end

Rails.application.routes.draw do
  get 'products/create'

  get 'products/new'

  get 'products/edit'

  get 'products/update'

  get 'products/destroy'

  get 'products/show'

  get 'products/index'

  get 'tags/create'

  get 'tags/edit'

  get 'tags/new'

  get 'tags/update'

  get 'tags/destroy'

  get 'tags/show'

  get 'tags/index'

  get 'home/index'

  get 'home/contact'

  get 'categories/create'

  get 'categories/new'

  get 'categories/edit'

  get 'categories/update'

  get 'categories/destroy'

  get 'categories/index'

  get 'categories/show'

  get 'contact' => 'home#contact'

  get 'home' => 'home#index'

  root 'home#index'

  resources :products
  resources :tags
  resources :categories

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

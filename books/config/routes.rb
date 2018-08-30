Rails.application.routes.draw do
  
  get 'welcome/index'
  

  get 'books/index'
  resources :books

  get 'users/index'
  resources :users
 

  resource :session, only: [:new, :create, :destroy]
  
  root 'welcome#index'
  
  
  # get 'books/show'
  # get 'books/new'
  # get 'books/edit'
  # get 'books/create'
  # get 'books/update'
  # get 'books/destroy'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

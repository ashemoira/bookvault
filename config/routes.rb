Rails.application.routes.draw do
  get 'bookshelves/edit'
  get 'bookshelves/index'
  get 'bookshelves/new'
  get 'bookshelves/show'
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

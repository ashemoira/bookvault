# frozen_string_literal: true

Rails.application.routes.draw do
  resources :bookshelves
  resources :books
end

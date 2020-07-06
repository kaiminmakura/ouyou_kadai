Rails.application.routes.draw do

   root to: 'home#top'

   devise_for :users

   resources :users, only: [:show, :index, :edit, :update]

   resources :books, only: [:create, :index, :show, :edit, :update, :destroy]

   get '/home/about' => 'home#about', as: 'about'
end
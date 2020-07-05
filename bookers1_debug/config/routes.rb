Rails.application.routes.draw do

  get 'top' => 'home#top'

  root to: 'home#top'

  resources :books
end

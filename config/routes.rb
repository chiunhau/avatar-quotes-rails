Rails.application.routes.draw do
  get 'random', to: 'lines#random'
  resources :episodes
  resources :books
  resources :lines

  get 'api/random', to: 'lines#getRandom'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

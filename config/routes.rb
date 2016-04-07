Rails.application.routes.draw do
  root 'zoos#index'

  resources :zoos, except: [:show] do
    resources :animals
    resources :lions, controller: 'animals', type: 'Lion'
    resources :bears, controller: 'animals', type: 'Bear'
    resources :elephants, controller: 'animals', type: 'Elephant'
  end
end

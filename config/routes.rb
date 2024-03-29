Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'

  # root 'people#show'
  
  root 'links#index'

  resources :people do
    resources :links
  end
  resources :person_sessions

  get '/coming_soon', to: 'static_pages#coming_soon', as: "coming_soon"

  get '/signup', to: 'people#new', as: 'signup'
  get '/signin', to: 'person_sessions#new', as: 'signin'
  delete '/signout', to: 'person_sessions#destroy', as: 'signout'

  resources :links

end

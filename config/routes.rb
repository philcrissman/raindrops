Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'

  root 'people#show'

  get '/coming_soon', to: 'static_pages#coming_soon', as: "coming_soon"

  resources :people

end

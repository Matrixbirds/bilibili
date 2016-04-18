Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
  root 'home#index'
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get]
  resources :sessions, only: [:logout, :failure, :create] do
    collection do
      delete :logout, to: 'sessions#destroy'
      get :failure
    end
  end
end

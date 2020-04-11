Rails.application.routes.draw do
  resources :conversations, only: [:index, :create]
  resources :messages, only: [:create]

  namespace :webhooks do
    resource :plivo, controller: :plivo, only: [:create]
  end


  mount ActionCable.server => '/cable'
end

Rails.application.routes.draw do
  resources :conversations
  get '/conversations/logs', to: 'conversations#plivo_logs'
  resources :messages, only: [:create]

  namespace :webhooks do
    resource :plivo, controller: :plivo, only: [:create]
  end


  mount ActionCable.server => '/cable'
end

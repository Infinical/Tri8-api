# frozen_string_literal: true

Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  namespace :api do
    namespace :v0 do
      resources :ping, only: [:index], constraints: { format: 'json' }
    end

    namespace :v1 do
      mount_devise_token_auth_for 'User', at: 'auth', skip: [:omniauth_callbacks]
      resources :categories

      resources :meals

    end
  end
end

Rails.application.routes.draw do
  devise_for :users
  root controller: :cars, action: :index
  namespace :api do
    mount_devise_token_auth_for 'User', at: 'auth', skip: [:omniauth_callbacks], controllers: {
      sessions: 'api/sessions',
      registrations: 'api/registrations'
    }
  end
end

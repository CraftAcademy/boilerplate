Rails.application.routes.draw do
  devise_for :users
  root controller: :cars, action: :index
end

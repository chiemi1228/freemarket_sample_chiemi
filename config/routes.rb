Rails.application.routes.draw do
  devise_for :users
  root 'sells#index'
  resources :users, only: [:new, :create] do
    resources :sells
  end
end

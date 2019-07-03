Rails.application.routes.draw do
  devise_for :users
  root 'sells#index'
  resources :users, only: [:new, :create] do
    resources :sells
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

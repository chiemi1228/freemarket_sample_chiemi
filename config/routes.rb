Rails.application.routes.draw do
  devise_for :users
  root 'sells#index'
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :users, only: [:new, :create] do
    resources :sells do
      resources :buys
    end
  end
end

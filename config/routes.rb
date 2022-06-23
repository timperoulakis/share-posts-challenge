Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :posts do
    resources :comments, only: %i[create update]
  end
end

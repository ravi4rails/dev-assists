Rails.application.routes.draw do

  namespace :admin do
    resources :developers
    resources :skills
  end

  root 'home#index'

end

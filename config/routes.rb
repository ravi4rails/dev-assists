Rails.application.routes.draw do

  devise_for :developers, path: 'developers', controllers: {
    sessions:             'developers/sessions',
    passwords:            'developers/passwords',
    registrations:        'developers/registrations',
    confirmations:        'developers/confirmations',
    ominiauth_callbacks:  'developers/ominiauth_callbacks',
    unlocks:              'developers/unlocks'
  }
  
  devise_for :admins, path: 'admins', controllers: {
    sessions:             'admins/sessions',
    passwords:            'admins/passwords',
    registrations:        'admins/registrations',
    confirmations:        'admins/confirmations',
    ominiauth_callbacks:  'admins/ominiauth_callbacks',
    unlocks:              'admins/unlocks'
  }
  
  namespace :admin do
    resources :developers
    resources :skills
  end

  root 'home#index'

end

Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  resources :users do
    member do
      get 'account'
    end
    collection do
      get 'search'
    end
  end
  
  root to: "users#index"
end

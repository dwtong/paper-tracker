Rails.application.routes.draw do
  devise_for :users, skip: [:registrations]
  devise_scope :user do
    authenticated :user do
      root 'customers#index'
      resources :customers do
        resources :collections
      end

      resources :collections
      resources :orders
    end

    unauthenticated do
      root 'devise/sessions#new'
    end
  end
end

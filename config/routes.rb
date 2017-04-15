Rails.application.routes.draw do
  resources :customers do
    resources :collections
  end

  resources :collections
end

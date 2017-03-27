Rails.application.routes.draw do
  resources :customers do
    resources :collections
  end

  get '/collections/choose_customer', to: 'collections#choose_customer', as: :choose_customer
end

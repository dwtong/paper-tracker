Rails.application.routes.draw do
  resources :customers do
    resources :paper_collections
  end

  get '/paper_collections/choose_customer', to: 'paper_collections#choose_customer', as: :choose_customer
end

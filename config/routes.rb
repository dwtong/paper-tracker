Rails.application.routes.draw do
  resources :customers do
    resources :paper_collections
  end
end

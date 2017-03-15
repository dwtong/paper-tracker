Rails.application.routes.draw do
  resources :customers do
    resources :sheet_collections
  end
end

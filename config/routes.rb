Rails.application.routes.draw do
  resources :strains
  resources :wines
  root 'strains#index'
end

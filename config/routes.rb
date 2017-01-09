Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :days, only: [:create] do
    resource :thought, only: [:show]
  end
end

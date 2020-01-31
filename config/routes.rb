Rails.application.routes.draw do
  resources :recipes do
    resources :ingredients, only: [:new]
  end
  root to: 'recipes#index'
end

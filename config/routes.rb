Rails.application.routes.draw do
  root to: 'recipes#index'

  resources :recipes, only: [:show] do
    collection do 
      post :search
    end
  end
end

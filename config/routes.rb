Rails.application.routes.draw do
  root to: 'pages#home'

  resources :recipes, only: [:index, :show] do
    collection do 
      post :search
    end
  end
end

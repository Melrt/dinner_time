Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  # mais il me faut une route post
  resources :recipes, only: [:index, :show] do
    collection do 
      post :search
    end
    # ca va pas ca me demander l'id d'une recette 
  end
end

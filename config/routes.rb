Rails.application.routes.draw do
  
  get 'recipes', to: 'recipes#index'
  post 'recipe', to: 'recipes#create'
  get 'recipe/id', to: 'recipes#show'
  get 'recipe/id', to: 'recipes#edit'
  put 'recipe/id', to: 'recipes#update'
  delete 'recipe/id', to: 'recipes#destroy'
  
  
  
  
  # recipe.resources :recipes, only: [:index, :create, :update, :destroy]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

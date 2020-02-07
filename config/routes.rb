Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'chemicals#index'

  resources :chemicals, :only => [:index, :show]
  
  # resources :chemicals do
  #  get :autocomplete_chemical_name, on: :collection
  # end
end

Rails.application.routes.draw do
  # get 'food_incubators/index'

  # get 'food_incubators/show'

  # get 'food_incubators/new'

  # get 'food_incubators/edit'

  get 'welcome/index'

  root 'welcome#index'
  
  

  # get 'accelerators/index'

  # get 'accelerators/show'

  # get 'accelerators/new'

  # get 'accelerators/edit'



  resources :accelerators #, only: [:create, :update, :delete, :show]

  resources :food_incubators
  
 # root 'accelerators#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

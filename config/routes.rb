Rails.application.routes.draw do
  # get 'accelerators/index'

  # get 'accelerators/show'

  # get 'accelerators/new'

  # get 'accelerators/edit'



  resources :accelerators, only: [:index, :create, :update, :delete, :show]

  root 'accelerators#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

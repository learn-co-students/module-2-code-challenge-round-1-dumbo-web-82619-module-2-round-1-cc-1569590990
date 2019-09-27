Rails.application.routes.draw do
  get 'appearances/index'

  get 'appearances/show'

  get 'appearances/new'

  get 'appearances/create'

  get 'appearances/update'

  get 'appearances/edit'

  get 'appearances/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index]
  resources :episodes, only: [:index]
end

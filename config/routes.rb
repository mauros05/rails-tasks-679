Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Show
  get 'tasks', to: 'tasks#index'

  get 'tasks/new', to: 'tasks#new'

  # Create

  get 'tasks/:id', to: 'tasks#show', as: :task

  post 'tasks', to: 'tasks#create'

  # Update

  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit

  patch 'tasks/:id', to: 'tasks#update'

  # Delete

  delete 'tasks/:id', to: 'tasks#destroy', as: :destroy

end

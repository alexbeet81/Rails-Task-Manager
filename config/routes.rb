Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # list tasks
  get 'tasks', to: 'tasks#index'
  # add a new task
  get 'tasks/new', to: 'tasks#new'
  # view the detail of a task
  get 'tasks/:id', to: 'tasks#show'

  # edit a task
  # remove a task
end

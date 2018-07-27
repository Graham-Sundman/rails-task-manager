Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get "tasks", to: "tasks#index"
    get 'task/new', to: 'tasks#new' # gets FORM - create step 1
    get 'tasks/:id', to: 'tasks#show', as: "task"
    post 'tasks', to: 'tasks#create' # creates ONE - step 2
    get 'tasks/:id/edit', to: 'tasks#edit', as: "edit_task" # UPDATE step 1
    patch 'tasks/:id', to: 'tasks#update' # UPDATE step 2
    delete 'tasks/:id', to: 'tasks#destroy', as: 'delete_task' # DELETE

end

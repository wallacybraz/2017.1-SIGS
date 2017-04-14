Rails.application.routes.draw do

  root 'sessions#new'

### Coordinator - ROUTES
  get 'coordinator/registration_request'

  get 'coordinator/edit'

  get 'coordinator/update'

  get 'coordinator/show:id' => 'coordinator#show', as: 'coordinator_show'

  get 'coordinator/destroy'

  get 'coordinator/enable'

  #login
  get 'sign_in' => 'sessions#new'
  post 'sign_in' => 'sessions#create'
  delete 'sign_out' => 'sessions#destroy'
  ###

  #user
  get '/user/:id' => 'user#show', :as => 'user'

  root 'sessions#new'
  #login
  get 'sign_in' => 'sessions#new'
  post 'sign_in' => 'sessions#create'
  get 'sign_out' => 'sessions#destroy'
  ###

  get 'user/update'

  get 'user/new' => 'user#new' , as: 'new_user'

  get 'user/create'

  get 'user/edit'

### Department Assistant - ROUTES
  get 'department_assistant/registration_request' => 'department_assistant#registration_request'

  get 'department_assistant/index/:id' => 'department_assistant#index', as: 'index'

  get 'department_assistant/edit' => 'department_assistant#edit'

  get 'department_assistant/update' => 'department_assistant#update'

  get 'department_assistant/show/:id' => 'department_assistant#show', as: 'show'

  get 'department_assistant/destroy/:id' => 'department_assistant#destroy', as: 'destroy'

  get 'department_assistant/enable' => 'department_assistant#enable'
###

### Administrative Assistant - ROUTES
  get 'administrative_assistant/show/:id' => 'administrative_assistant#show', as: 'adm_show'

  get 'administrative_assistant/destroy/:id' => 'administrative_assistant#destroy', as: 'adm_remove'

  get 'administrative_assistant/index_users' => 'administrative_assistant#index_users' ,as: 'index_users'

  get 'administrative_assistant/edit_users/:id' => 'administrative_assistant#edit_users', as:'edit_users'

  post 'administrative_assistant/update_users/:id' => 'administrative_assistant#update_users' , as:'update_users'

  get 'administrative_assistant/destroy_users/:id' => 'administrative_assistant#destroy_users' , as: 'destroy_users'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

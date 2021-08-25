Rails.application.routes.draw do
  get 'employees', to: 'employees#index'
  post 'employees', to: 'employees#create'
  put 'employees/:id', to: 'employees#update'
  delete 'employees/:id', to: 'employees#destroy'

  get 'departments', to: 'departments#index'
  post 'departments', to: 'departments#create'
  put 'departments/:id', to: 'departments#update'
  delete 'departments/:id', to: 'departments#destroy'
end

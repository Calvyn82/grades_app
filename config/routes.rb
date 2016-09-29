Rails.application.routes.draw do
  get    '/dashboards/:id' => 'dashboards#show',    as: :dashboard
  post   '/dashboards/:id' => 'dashboards#create'
  delete '/dashboards/:id' => 'dashboards#destroy'

  get    '/admins'         => 'sessions#new'
  post   '/admins'         => 'sessions#create'

  get    '/students'       => 'students#show'

  get    '/'               => 'students#index'
  get    '/:school_id'     => 'students#show'

  root 'students#index'
end

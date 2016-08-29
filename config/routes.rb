Rails.application.routes.draw do
  get    '/dashboards/:id' => 'dashboards#index'
  post   '/dashboards/:id' => 'dashboards#create'
  delete '/dashboards/:id' => 'dashboards#destroy'

  get    '/admins'         => 'sessions#new'
  post   '/admins'         => 'sessions#create'

  get    '/:school_id'     => 'students#show'
end

Rails.application.routes.draw do
  resources :jobs
  post 'comments' => 'comments#create'

  root 'jobs#index'
end

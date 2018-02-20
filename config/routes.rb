Rails.application.routes.draw do
  resources :upcs do
  end
  root 'upcs#show'
  post 'upcs/create', to: "upcs#create"
  get 'upcs/index', to: "upcs#index"
end

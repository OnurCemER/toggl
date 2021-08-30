Rails.application.routes.draw do
  resources :users
  resources :time_records
  root 'time_records#index'
  get 'filter', to: 'time_records#filter'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

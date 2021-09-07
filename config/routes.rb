Rails.application.routes.draw do
  devise_for :app_users
  devise_for :users
  resources :time_records
  root 'main#hello'
  get 'filter', to: 'time_records#filter'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

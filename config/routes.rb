Rails.application.routes.draw do
  get 'user/show'
  get 'user/edit'
  get 'user/destroy'
  get 'user/get_all_users'
  devise_for :app_users
  devise_for :users
  resources :time_records
  root 'main#hello'
  get 'filter', to: 'time_records#filter'
  get 'get_by_user', to: 'time_records#show_time_records_by_user'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

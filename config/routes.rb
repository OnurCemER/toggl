Rails.application.routes.draw do
  resources :categories
  get 'user/show'
  get 'user/edit'
  get 'user/index'
  get 'user', to:"user#show"
  delete 'user', to:"user#destroy"
  devise_for :app_users
  devise_for :users
  resources :time_records
  root 'main#hello'
  get 'report', to: 'time_records#report'
  get 'filter_by_user', to: 'time_records#filter'
  get 'filter_by_category', to: 'time_records#filter_by_time_type'
  get 'get_by_user', to: 'time_records#show_time_records_by_user'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

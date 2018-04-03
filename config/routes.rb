Rails.application.routes.draw do

  # devise_for :users
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: "application#home"

  get '/users/add-user/:username', to: 'users#edit', as: "add_user"
  patch '/users/add-user/:username', to: 'users#update'
  get '/users/search-user', to: 'users#search', as: "find_user"
  post '/users/search-user', to: 'users#find'

  # get '/tc/add-user/:username', to: 'users#edit', as: "add_user"

  get '/tcs/aaq', to: 'aaq#index', as: "aaq"
  get '/tcs/aaq/:slug', to: 'aaq#show', as: "find_tc_aaq"

  get '/tcs/study_group', to: 'study_group#index', as: "study_group"
  get '/tcs/study_group/:slug', to: 'study_group#show', as: "find_tc_study_group"
end

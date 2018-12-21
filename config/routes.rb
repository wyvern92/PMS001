Rails.application.routes.draw do
  get 'admin/index'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :authentications
  resources :houseinfos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

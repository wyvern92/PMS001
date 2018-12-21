Rails.application.routes.draw do
  get 'admin' => 'admin#index'

  resources :authentications
  resources :houseinfos

   controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end


  get ':controller(/:action(/:id(.:format)))'
  post ':controller(/:action(/:id(.:format)))'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

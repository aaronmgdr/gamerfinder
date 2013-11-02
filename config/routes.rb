Gamerfinder::Application.routes.draw do
  devise_for :users, :path => 'accounts'
  root 'users#index'
  resources :xbox_gamer_info
  resources :users do
    resources :responses do
      collection do
        get :change
        put :bulk_update
      end
    end
  end
end

  resources :conversations  
  
  resources :messages
  
end

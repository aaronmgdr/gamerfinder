Gamerfinder::Application.routes.draw do
<<<<<<< HEAD
=======
  get "message/snippet"
  get "registrations_controller/after_sign_up_path_for"
  delete "conversations/:id", to: "conversations#destroy", as: "destroy"
  # devise_for :users, :path => 'accounts'
  devise_for :users, :controllers => { :registrations => "registrations" }
>>>>>>> conversations-front-end
  root 'users#index'
  get "registrations_controller/after_sign_up_path_for"
  devise_for :users, :controllers => { :registrations => "registrations" }, :path => 'accounts'
  delete '/conversations/:id', to: 'conversations#destroy', as: 'destroy'
  resources :xbox_gamer_info
  resources :users do
    resources :responses do
      collection do
        get :change
        put :bulk_update
      end
    end
  end

  resources :conversations

  resources :messages

end

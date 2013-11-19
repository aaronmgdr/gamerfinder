Gamerfinder::Application.routes.draw do
  #what is this for? mike? [fremen]
  get "message/snippet"
  get "registrations_controller/after_sign_up_path_for"
  delete "conversations/:id", to: "conversations#destroy", as: "destroy"

  root 'users#index'
  # i dont think this is doing anything? [fremen]
  get "registrations_controller/after_sign_up_path_for"
  # avoid conflict with regular users routes
  devise_for :users, :controllers => { :registrations => "registrations" }, :path => 'accounts'
  resources :xbox_gamer_info
  resources :users do
    resources :responses do
      #for submiting users responses to questionare
      collection do
        get :change
        put :bulk_update
      end
    end
  end

  resources :conversations

  resources :messages

end

Gamerfinder::Application.routes.draw do
  devise_for :users, :path => 'accounts'
  root 'users#index'

  resources :users do
    resources :responses do
      collection do
        get :change
        put :bulk_update
      end
    end
  end
end









#   Gamerfinder::Application.routes.draw do
#   devise_for :users, :path => 'accounts'
#   root 'users#index'

#   resources :users do
#     resources :responses do
#       get 'change', :on => :collection
#       put 'bulk_update', :on => :collection
#     end
#   end
# end
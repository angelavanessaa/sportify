Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'home#index'


  devise_for :users, controllers: { :omniauth_callbacks => "users/omniauth_callbacks", registrations: 'users/registrations', sessions: 'users/sessions' }
    
  resources :users do
    resources :posts, only: [:index, :show]
  end

  resources :users do  
    resources :categories do
      resources :products do
        resources :posts, only: [:index, :show]
      end
    end
  end

  post '/posts/:id/buy', to: "posts#buy", as: "buy"
  


  resources :wishlists do
      resources :votes, only: [:create]
  end


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  get 'admin' => 'home#admin', as: 'admin'

  scope '/admin' do  
    resources :categories do
      resources :products do
        resources :posts
      end
    end
  end

  scope '/', controller: :main do
    get 'categories' #shows all categories
    get 'deals' #shows all deals
    get '/categories/:name', to: 'main#category'
  end
end

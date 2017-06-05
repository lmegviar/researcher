Rails.application.routes.draw do
  get 'home/index'

  resources :articles do	
  	resources :details
  end

  resource :user_session, only: [:create, :new, :destroy]

  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

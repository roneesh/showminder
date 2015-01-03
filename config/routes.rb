Rails.application.routes.draw do
  resources :shows do
  	member do
    	get 'get_notified'
  	end
  end

  root to: 'visitors#index'
  devise_for :users
  resources :users

end

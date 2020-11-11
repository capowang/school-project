Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
	resources :articles, only: [:index, :show]
	resources :schools, only: [:index, :show] do 
		resources :teachers, only: [:index]
	end
	resources :abouts, only: [:index]
	root to: "articles#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

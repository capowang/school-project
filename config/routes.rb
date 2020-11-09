Rails.application.routes.draw do
	resources :articles
	resources :schools do 
		resources :teachers, only: [:index, :new, :create]
	end
	resources :teachers, only: [:edit, :update, :destroy]
	root to: "articles#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do

  devise_for :users
  resources :classrooms do
    resources :topics do
      resources :flashcards
    end
  end
  root 'classrooms#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

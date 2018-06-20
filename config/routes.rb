Rails.application.routes.draw do

  devise_for :users
  resources :classrooms, except: [:show] do
    resources :topics do
      resources :flashcards, except: [:show, :edit, :update]
    end
  end
  put 'flashcards/:id' => 'flashcards#correct'
  root 'classrooms#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

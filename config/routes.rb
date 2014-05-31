Rails.application.routes.draw do
  devise_for :users
  resources :topics, only: [:index, :show] do
    resources :quizzes, only: [:index, :show, :new, :create, :update]
  end

  root to: 'topics#index'
end

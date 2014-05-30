Rails.application.routes.draw do
  resources :topics, only: [:index, :show] do
    resources :quizzes, only: [:index, :show, :new, :create, :update]
  end

  root to: 'topics#index'
end

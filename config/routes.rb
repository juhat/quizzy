Rails.application.routes.draw do
  resources :topics
  resources :quizzes

  root to: 'topics#index'
end

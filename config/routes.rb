Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts
  root 'posts#index'
  
  post '/posts/new', to: 'posts#create'
  get '*unmatched_route', to: 'exception#catch_404'
end

Rails.application.routes.draw do
  get 'comments/index'
  get 'comments/show'
  get 'comments/new'
  get 'comments/edit'
  root to: 'posts#index'
  resources :posts

  resources :posts do
    resources :comments
  end
end

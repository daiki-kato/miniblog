Rails.application.routes.draw do
  root 'posts#index'
  devise_for :users
  get  'posts'      => 'posts#index'
  get  'posts/newpost' => 'posts#newpost'
  post 'posts'     => 'posts#create'
  delete  'posts/:id'  => 'posts#destroy'
  get   'posts/:id/edit'  => 'posts#edit'
  patch   'posts/:id'  => 'posts#update'
end
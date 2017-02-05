Rails.application.routes.draw do
  get 'posts/index'
  #get 'posts/show'
  get 'posts/show/:slug', to: 'posts#show', as: :posts_show
  get 'posts/new'
  post 'posts', to: 'posts#create', as: :posts
  get 'posts/edit/:slug', to: 'posts#edit', as: :posts_edit
  patch 'posts/edit/:slug', to: 'posts#update', as: :posts_update
  delete 'posts/delete/:slug', to: 'posts#destroy', as: :posts_destroy

  resources :categories
  #, except: [:show] to except some operation

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'
  get  '/contact', to: 'pages#contact',       as: :contact_page
  post '/contact', to: 'pages#contact_post',  as: :contact_posts
end

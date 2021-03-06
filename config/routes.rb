Rails.application.routes.draw do
  get 'topics/new'
   get 'sessions/new'
   # get 'users/new'     resources :usersの中に入ってるからいらないやつ
   # post 'users/new', to: 'users#create'       メンタリング時に試しに入力したやつ
   get 'pages/index'
   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root "pages#index"
   get "pages/help"

   resources :users
   resources :topics

   get 'favorites/index'
   post '/favorites', to: 'favorites#create'
   delete '/favorites', to: 'favorites#destroy'

   get    '/login',   to: 'sessions#new'
   post   '/login',   to: 'sessions#create'
   delete '/logout',  to: 'sessions#destroy'

   resources :comments
 end

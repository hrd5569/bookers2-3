Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# users/:idのルートパスがusers/sign_inを包括してしまわないように、devise_for :usersを先に書くことでusers/sign_in の後に　users/:idがルーティングとして動かす。
  devise_for :users
  root :to =>"homes#top"
  get "home/about"=>"homes#about"

  resources :books, only: [:index,:show,:edit,:create,:destroy,:update]
  resources :users, only: [:index,:show,:edit,:update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 end
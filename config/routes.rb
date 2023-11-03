Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# users/:idのルートパスがusers/sign_inを包括してしまわないように、devise_for :usersを先に書くことでusers/sign_in の後に　users/:idがルーティングとして動かす。
  devise_for :users
  root :to =>"homes#top"
  get "home/about"=>"homes#about"
  

  resources :users, only: [:index,:show,:edit,:update]
  resources :books, only: [:index,:show,:edit,:create,:destroy,:update] do
  resource :favorite, only: [:create, :destroy]
  end
 end
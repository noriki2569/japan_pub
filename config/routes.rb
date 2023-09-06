Rails.application.routes.draw do

devise_for :users, skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}

scope module: :public do
    root to: 'homes#top'
    resources :pubs, only: [:new, :index, :update, :create, :edit, :destroy]
    get "users/confirmation" => 'users#confirmation'
    patch "users/withdrawal" => 'userrs#withdrawal'
    resources :users, only: [:index, :show, :edit, :update]
end

namespace :admin do
   root to: 'homes#top'
   resources :users, only: [:index, :show, :edit, :update]
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
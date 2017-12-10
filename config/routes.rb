Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: :omniauth_callbacks }

  root controller: :stories, action: :index

  resources :stories do
    resources :chapters
  end
end

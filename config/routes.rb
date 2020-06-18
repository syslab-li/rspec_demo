Rails.application.routes.draw do
  resources :posts
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
  }
  # APIコントローラへのルーティング
  namespace :api, {format: 'json'} do
    namespace :v1 do
      resources :papis, only: [:index, :show, :create]
    end
  end

  root to: "posts#index"
  get '*path', to: 'posts#index', format: false
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get 'pages/index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources 'boards', only:[:index, :new, :create, :edit, :destroy, :update]
  root to: "pages#index"
end

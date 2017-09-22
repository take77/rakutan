Rails.application.routes.draw do
  get 'uploader/index'

  get 'uploader/form'

  get 'uploader/upload'

  get 'uploader/download'

  devise_for :users
  root to: "top#index"
  resources :exams, only: [:new, :create, :show]
  resources :reports, only: [:new, :create, :show]
  resources :notes, only: [:new, :create,:show]
  resources :affiliations, only: [:new, :create]
  resources :users, only:[:show]
end

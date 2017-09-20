Rails.application.routes.draw do
  get 'uploader/index'

  get 'uploader/form'

  get 'uploader/upload'

  get 'uploader/download'

  devise_for :users
  root to: "top#index"
  resources :exams, only: [:new, :create]
  resources :reports, only: [:new, :create]
  resources :notes, only: [:new, :create]
  resources :affiliations, only: [:new, :create]
end

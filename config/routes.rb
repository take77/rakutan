Rails.application.routes.draw do
  devise_for :users
  root to: "top#index"
  resources :exams, only: [:new, :create, :show] do
    member do
      post "add", to: "clip_exams#create"
    end
    resources :exam_comments, only: [:new, :create, :show]
    resources :exam_items, only: [:destroy] do
      member {get 'download'}
    end
  end
  resources :reports, only: [:new, :create, :show] do
    member do
      post "add", to: "clip_reports#create"
    end
    resources :report_comments, only: [:new, :create, :show]
    resources :report_items, only: [:destroy] do
      member {get 'download'}
    end
  end
  resources :notes, only: [:new, :create,:show] do
    member do
      post "add", to: "clip_notes#create"
    end
    resources :note_comments, only: [:new, :create, :show]
    resources :note_items, only: [:destroy] do
      member {get 'download'}
    end
  end
  resources :affiliations, only: [:new, :create]
  resources :users, only:[:show]
  resources :clips, only: [:index]
end

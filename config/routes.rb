Rails.application.routes.draw do
  devise_for :users
  root to: "top#index"
  resources :exams, only: [:new, :create, :show] do
    resources :exam_comments, only: [:new, :create, :show]
    resources :exam_items, only: [:destroy] do
      member {get 'download'}
    end
  end
  resources :reports, only: [:new, :create, :show] do
    resources :report_comments, only: [:new, :create, :show]
    resources :report_items, only: [:destroy] do
      member {get 'download'}
    end
  end
  resources :notes, only: [:new, :create,:show] do
    resources :note_comments, only: [:new, :create, :show]
    resources :note_items, only: [:destroy] do
      member {get 'download'}
    end
  end
  resources :affiliations, only: [:new, :create]
  resources :users, only:[:show]
  resources :feed_contents, only: [:index] do
    resources :clips, only: [:create, :destroy]
  end
  resources :comments, only: [:index] do
    resources :comment_likes, only: [:create, :destroy]
  end
  resources :clips, only: [:index]
end

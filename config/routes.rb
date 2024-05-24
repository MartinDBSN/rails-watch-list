Rails.application.routes.draw do

  root to: 'lists#index'
  resources :lists, only: [:new, :create, :show, :destroy] do
    # get '/lists/:id/bookmarks/new', to: 'bookmarks#new', as: 'new_bookmark'
    resources :bookmarks, only: [:new, :create, :destroy]
  end
end

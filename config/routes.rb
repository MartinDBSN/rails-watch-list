Rails.application.routes.draw do


  resources :lists, only: [:index, :new, :create, :show, :destroy] do
    # get '/lists/:id/bookmarks/new', to: 'bookmarks#new', as: 'new_bookmark'
    resources :bookmarks, only: [:new, :create]
  end
end

Rails.application.routes.draw do


  # root to: 'users#index'

  root to: 'sessions#new'

  # get '/button', to: 'achievements#create', as: 'button'
  # get '/events', to: 'events#create', as: 'calendar_display'

  resources :calendars
  resources :notes
  resources :achievements
  resources :goals
  resources :users, only: [:new, :create]
  resources :events, except: [:new]
  get '/events/:id/new', to: "events#new", as: "create_event"
  resource :session, only: [:new, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

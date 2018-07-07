Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "users#show", id: 1

  # routes to display info
  resources :users, only: %i[show] do
    resources :blogs, only: %i[index show]
    resource :resume, only: %i[show] do
      resources :educations, only: %i[index]
      resources :experiences, only: %i[index]
      resources :projects, only: %i[index]
      resources :skills, only: %i[index]
    end

  end

  # routes to create,  edit and delete stuff
  resource :user, only: %i[new create]
  resource :session, only: %i[new create destroy] do
    resource :user, only: %i[edit update] do
      resources :blogs, only: %i[new create edit update destroy]
      resource :resume, only: %i[new create edit update] do
        resources :educations, only: %i[new create edit update destroy]
        resources :experiences, only: %i[new create edit update destroy]
        resources :projects, only: %i[new create edit update destroy]
        resources :skills, only: %i[new create edit update destroy]
      end
    end

  end

end

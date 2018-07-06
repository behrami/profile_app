Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # routes to display info
  resources :users only: %i[show] do
    resources :blogs only: %i[index show]
    resource :resume only: %i[show] do
      resources :educations only: %i[index]
      resources :experiences only: %i[index]
      resources :projects only: %i[index]
      resources :skills only: %i[index]
    end
  end

  # routes to create and edit stuff
  
end

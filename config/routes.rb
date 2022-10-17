Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :books do # doesn't need :edit/:new because those are primarily for the view 
        match
      end
    end
    namespace :v2 do
      resources :books, only: [:index]
    end
  end

end

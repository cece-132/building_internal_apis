Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :books, only: [:index, :show, :create, :update, :destroy] # doesn't need :edit/:new because those are primaritly for the view
    end
    namespace :v2 do
      resources :books, only: [:index]
    end
  end

end

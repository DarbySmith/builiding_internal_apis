Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  namespace :api do
    namespace :v1 do
      resources :books
    end

    namespace :v2 do
      resources :books, only: [:index]
    end
  end

  patch "/api/v1/books/:id/sell", to: "api/v1/books#sell"
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "portfolio#index"
  resources :portfolio, only: :index

  resources :contacts, only: [:new, :create] do
    collection do
      get "sended"
    end
  end

end

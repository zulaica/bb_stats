Rails.application.routes.draw do
  namespace :api do
    resources :teams do
      resources :players
    end
  end
end

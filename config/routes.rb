Rails.application.routes.draw do
  resources :pages
  
  namespace :admin do
    resources :pages
  end
end

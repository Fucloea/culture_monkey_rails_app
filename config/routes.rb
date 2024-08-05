Rails.application.routes.draw do
  root "home_page#index"
  resources :bills
  resources :departments
  resources :employees
  get '/improvements', to: "home_page#improve"
end

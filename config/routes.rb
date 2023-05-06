Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "tasks", to: "tasks#list"
  # Defines the root path route ("/")
  get "tasks/new", to: "tasks#new"
  get "tasks/:id/edit", to: "tasks#edit", as: :edit
  post "tasks", to: "tasks#create"
  patch "tasks/id", to: "tasks#update"
  get "tasks/:id", to: "tasks#show", as: :task
  # root "articles#index"
end

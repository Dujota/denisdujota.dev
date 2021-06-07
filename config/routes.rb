Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "pages#main"

  # Pages
  get "contact", to: "pages#contact"

  # Blog Posts
  resources :posts do
  end
end

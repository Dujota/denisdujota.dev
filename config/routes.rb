Rails.application.routes.draw do
  devise_for :users, skip: [:registrations]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  scope :admin do
    resources :posts
  end

  # Blog Posts
  resources :posts, only: %i[index show]

  # Pages
  root "pages#main"
  get "contact", to: "pages#contact"
end

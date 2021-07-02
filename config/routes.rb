Rails.application.routes.draw do
  # Pages
  root "pages#home"
  get "contact", to: "pages#contact"

  # Admin Routes
  devise_for :users, path: "admin",
                     :path_names => {
                       :sign_in => "signin",
                       :sign_out => "signout",
                     },
                     only: [:sessions]

  namespace :admin do
    root "base#dashboard"
    resources :posts, except: %i[show index]
  end

  # Blog Posts
  resources :posts, only: %i[index show]

  resources :inqury, only: %i[create]
end

Rails.application.routes.draw do
  devise_for :users, path: "admin",
                     :path_names => {
                       :sign_in => "signin",
                       :sign_out => "signout",
                     },
                     only: [:sessions]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :admin do
    root "base#dashboard"
    resources :posts, except: %i[show index]
  end

  # Blog Posts
  resources :posts, only: %i[index show]

  # Pages
  root "pages#home"
  get "contact", to: "pages#contact"
end

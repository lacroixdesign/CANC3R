Canc3r::Application.routes.draw do
  # Newsletter Signup
  post "newsletter" => "static#newsletter"

  # Share Events
  resources :facebook_events, path: "facebook-events", only: [:index, :create]
  resources :twitter_events,  path: "twitter-events",  only: [:index, :create]

  # Admin
  namespace :admin do
    root to: "settings#edit"
    resource :settings, only: [:edit, :create]
    post "clear-home-cache" => "settings#clear_home_cache", as: :clear_home_cache
  end

  # Home Page
  root :to => "static#index"
end

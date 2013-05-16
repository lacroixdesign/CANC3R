Canc3r::Application.routes.draw do
  # Newsletter Signup
  post "newsletter" => "static#newsletter"

  # Share Events
  resources :facebook_events, path: "facebook-events", only: [:index, :create]
  resources :twitter_events,  path: "twitter-events",  only: [:index, :create]

  # Home Page
  root :to => "static#index"
end

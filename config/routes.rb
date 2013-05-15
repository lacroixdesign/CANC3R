Canc3r::Application.routes.draw do
  post "newsletter" => "static#newsletter"
  root :to => "static#index"
end

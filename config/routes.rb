LANcenter::Application.routes.draw do
  root :to => "events#index"
  resources :events do
    resources :attendees
  end
end

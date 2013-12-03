LANcenter::Application.routes.draw do
  resources :events do
    resources :attendees
  end
end

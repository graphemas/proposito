Rails.application.routes.draw do
  get 'home/products'
  get 'home/appointments'
  get 'home/messages'
  get '/service-worker.js' => "service_worker#service_worker"
  get '/manifest.json' => "service_worker#manifest"
  get '/offline.html' => "service_worker#offline"
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get 'home/one'
  get 'home/two'
  get 'home/three'
  get 'home/four'
  get '/service-worker.js' => "service_worker#service_worker"
  get '/manifest.json' => "service_worker#manifest"
  get '/offline.html' => "service_worker#offline"
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

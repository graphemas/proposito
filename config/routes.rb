Rails.application.routes.draw do
  get 'scanner/index'
  resources 'categories'
  resources 'products' do
    collection do
      get 'products_list(/c/:category_id)' => :products_list, as: :products_list
    end
  end
  resources 'appoitments'
  get 'home/products'
  get 'home/appointments'
  get 'home/messages'
  get '/service-worker.js' => "service_worker#service_worker"
  get '/manifest.json' => "service_worker#manifest"
  get '/offline.html' => "service_worker#offline"
  root to: "categories#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

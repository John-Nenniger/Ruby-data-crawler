Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'contents#show'
 # root 'contents#create'
 # root 'contents#attempt'
 # root 'articles#create'

 namespace :api, defaults: {format: :json} do
   namespace :v1 do
    #  resources :contents, only: [:create]
    post 'contents', to: 'contents#compare'
   end
 end



end

Jets.application.routes.draw do

  
  
  namespace :api do
    namespace :v1 do 
      resources :services, only: [:index, :show, :update, :destroy] 
      resources :notes, only: [:index, :show, :create, :update, :destroy] 
      resources :outages, only: [:index, :show, :create, :update, :destroy] 
      get "current_user", to: "auth#get_user_from_token"
      post "login", to: "auth#login"
    end
  end

  # The jets/public#show controller can serve static utf8 content out of the public folder.
  # Note, as part of the deploy process Jets uploads files in the public folder to s3
  # and serves them out of s3 directly. S3 is well suited to serve static assets.
  # More info here: https://rubyonjets.com/docs/extras/assets-serving/
  # any "*catchall", to: "jets/public#show"
end

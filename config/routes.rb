# == Route Map
#
#        Prefix Verb  URI Pattern                Controller#Action
#          root GET   /                          shelves#index
# shelves_index GET   /shelves/index(.:format)   shelves#index
#   shelves_buy POST  /shelves/buy(.:format)     shelves#buy
#     api_shelf PATCH /api/shelves/:id(.:format) api/shelves#update
#               PUT   /api/shelves/:id(.:format) api/shelves#update
# 

Rails.application.routes.draw do
  root 'shelves#index'

  get 'shelves/index'
  post 'shelves/buy'

  namespace :api do
    resources :shelves, only: [:update]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

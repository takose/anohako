# == Route Map
#
#      Prefix Verb URI Pattern            Controller#Action
# shelf_index GET  /shelf/index(.:format) shelf#index
# 

Rails.application.routes.draw do
  get 'shelf/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

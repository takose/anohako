# == Route Map
#
#       Prefix Verb URI Pattern             Controller#Action
#         root GET  /                       stocks#index
# stocks_index GET  /stocks/index(.:format) stocks#index
# 

Rails.application.routes.draw do
  root 'shelves#index'

  get 'shelves/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

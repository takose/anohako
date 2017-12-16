class ShelvesController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    @shelf = Shelf.first.as_json(
      only: [:id, :name],
      include:
      { stocks:
        { only:
          [:id, :price, :rest],
          include:
          { product:
            { only: [:name, :image_url] }
          }
        }
      }
    )
  end

  def buy
    position = params[:position].to_i
    webmo_name = [
      'webmoR',
      'webmo01',
      'webmo02',
      'webmoL',
      'webmo-default',
      ''
    ]
    @connect = Faraday.new(url: "http://#{webmo_name[position / 2]}.local")
    if position % 2 == 0
      @connect.post('/api/rotate', { speed: "90", degree: "30", absolute: "false" })
    end
    redirect_to root_path
  end
end

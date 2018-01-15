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
      '',
      'webmo02',
      'webmoR',
      'webmoL',
      'webmo-default',
      'webmo01'
    ]
    @connect = Faraday.new(url: "http://#{webmo_name[position]}.local")
    _ = JSON.load(@connect.get('/api/sensor/rotation').body)
    rotation = (_["rotation"].to_i / 4096.0) * 360
    p rotation
    if rotation < 25
      @connect.post('/api/rotate', { speed: "90", degree: "55", absolute: "false" })
    else
      @connect.post('/api/rotate', { speed: "90", degree: "-55", absolute: "false" })
    end
    redirect_to root_path
  end
end

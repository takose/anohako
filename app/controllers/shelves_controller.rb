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
    if position <= 1
      @connect = Faraday.new(url: "http://#{ENV['FIRST_WEBMO_NAME']}.local")
    elsif position <= 3
      @connect = Faraday.new(url: "http://#{ENV['SECOND_WEBMO_NAME']}.local")
    elsif position <= 5
      @connect = Faraday.new(url: "http://#{ENV['THIRD_WEBMO_NAME']}.local")
    end
    if position % 2 == 0
      @connect.post('/api/rotate', { speed: "90", degree: "-60", absolute: "false" })
      @connect.post('/api/rotate', { speed: "90", degree: "60", absolute: "false" })
    else
      @connect.post('/api/rotate', { speed: "90", degree: "60", absolute: "false" })
      @connect.post('/api/rotate', { speed: "90", degree: "-60", absolute: "false" })
    end
    redirect_to root_path
  end
end

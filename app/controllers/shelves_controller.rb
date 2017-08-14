class ShelvesController < ApplicationController
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
end

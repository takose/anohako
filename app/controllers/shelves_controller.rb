class ShelvesController < ApplicationController
  def index
    @shelf = Shelf.first #FIXME
  end
end

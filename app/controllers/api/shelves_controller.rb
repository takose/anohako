class Api::ShelvesController < ApplicationController
  def update
    if params[:position]
      # WebmoService.supply(params[:position].to_i)
      render json: { status: 'ok' }
    else
      render json: { status: 'error' }
      head :unprocessable_entity
    end
  end
end
